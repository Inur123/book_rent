<?php

namespace App\Exports;

use App\Models\Writer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class WritersExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Writer::select('id','name')->get();
    }
    public function headings(): array
    {
        return ["ID","NAME"];
    }
}