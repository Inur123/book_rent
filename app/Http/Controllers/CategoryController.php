<?php

namespace App\Http\Controllers;

use App\Exports\CategoriesExport;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Imports\CategoriesImport;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Redis;
use PhpParser\Node\Expr\FuncCall;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::paginate(10);
        return view('category',['categories' =>$categories]);
    }

    public function add()
    {
        return view('category-add');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required', 'unique:categories', 'max:100'],
        ]);

        $category = Category::create($request->all());
        return redirect('categories')->with('status','Category Added Successfully');
    }

    public function edit($slug)
    {
        $category = Category::where('slug',$slug)->first();
        return view('category-edit',['category'=> $category]);
    }

    public function update(Request $request,$slug)
    {
        $validated = $request->validate([
            'name' => ['unique:categories', 'max:100'],
        ]);

        $category = Category::where('slug',$slug)->first();
        $category->slug = null;
        $category->update($request->all());
        return redirect('categories')->with('status','Category Updated Successfully');
    }

    public function delete($slug)
    {   
         $category = Category::where('slug',$slug)->first();
        return view('category-delete',['category'=> $category]);
    }
    public function destroy($slug)
    {
        $category = Category::where('slug',$slug)->first();
        $category->delete();
        return redirect('categories')->with('status','Category Deleted Successfully');
    }

    public function deletedCategory()
    {
        $deletedCategories = Category::onlyTrashed()->get();
        return view('category-deleted-list',['deletedCategories'=>$deletedCategories]);
    }

    public function restore($slug)
    {
        $category = Category::withTrashed()->where('slug',$slug)->first();
        $category->restore();
        return redirect('categories')->with('status','Category Restore Successfully');

    }

    public function import(){
        Excel::import(new CategoriesImport, request()->file('file'));

        return back(); 
    }

    public function export(){
        return Excel::download(new CategoriesExport,'category.xlsx');
    }
}