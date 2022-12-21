<?php

namespace App\Http\Controllers;

use App\Exports\WritersExport;
use App\Models\Writer;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\WritersImport;
use App\Http\Controllers\Controller;

class WriterController extends Controller
{
    public function index()
    {
        $writers = Writer::paginate(10);
        return view('writer', ['writers' => $writers]);
    }

    public function add()
    {
        return view('writer-add');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required','max:100'],
        ]);

        $writer = Writer::create($request->all());
        return redirect('writers')->with('status', 'writer Added Successfully');
    }

    public function edit($slug)
    {
        $writer = Writer::where('slug', $slug)->first();
        return view('writer-edit', ['writer' => $writer]);
    }

    public function update(Request $request, $slug)
    {
        $validated = $request->validate([
            'name' => ['max:100'],
        ]);

        $writer = Writer::where('slug', $slug)->first();
        $writer->slug = null;
        $writer->update($request->all());
        return redirect('writers')->with('status', 'writer Updated Successfully');
    }

    public function delete($slug)
    {
        $writer = Writer::where('slug', $slug)->first();
        return view('writer-delete', ['writer' => $writer]);
    }
    public function destroy($slug)
    {
        $writer = Writer::where('slug', $slug)->first();
        $writer->delete();
        return redirect('writers')->with('status', 'writer Deleted Successfully');
    }

    public function deletedWriter()
    {
        $deletedWriters = Writer::onlyTrashed()->get();
        return view('writer-deleted-list', ['deletedWriters' => $deletedWriters]);
    }

    public function restore($slug)
    {
        $writer = Writer::withTrashed()->where('slug', $slug)->first();
        $writer->restore();
        return redirect('writers')->with('status', 'writer Restore Successfully');

    }

    public function import(){
        Excel::import(new WritersImport, request()->file('file'));

        return back(); 
    }

    public function export(){
        return Excel::download(new WritersExport,'writer.xlsx');
    }
}