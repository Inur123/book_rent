<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use App\Models\Writer;
use App\Models\Category;
use App\Models\RentLogs;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        $bookCount = Book::count();
        $categoryCount = Category::count();
        $writerCount = Writer::count();
        $userCount = User::count();
        $rentlogs = RentLogs::with(['user', 'book'])->get();
        return view('dashboard',['book_count'=> $bookCount, 'category_count'=>$categoryCount,'writer_count'=>$writerCount,'user_count'=> $userCount,'rent_logs' => $rentlogs]);
    }
}