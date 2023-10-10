<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\support\Facades\DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $posting = DB::table('penumpang')->get();
        return view('penumpang',['posting'=> $posting]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("pesan");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        DB::table('penumpang')->insert([
            'nama'=>$request->nama,
            'umur' => $request->umur,
            'telp'=> $request->telp,
            'maskapai'=>$request->maskapai,
            'destinasi' => $request->destinasi,
            'tanggal'=> $request->tanggal,
            'harga'=> $request->harga
        ]);

        return redirect('/penumpang');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**f
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
   
}
