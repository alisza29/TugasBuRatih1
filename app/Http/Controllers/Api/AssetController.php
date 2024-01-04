<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Asset;
use Illuminate\Http\Request;

class AssetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // menyimpan data dari tabel asset ke variabel $assets
        // dimana user_id = id user yang sedang login
        $assets = Asset::where('user_id', auth()->user()->id)->get();

        // mengembalikan data dalam bentuk json
        return response()->json([
            'success' => true,
            'data' => $assets
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $data['user_id'] = auth()->user()->id;
        $data['image'] = $request->file('image')->store(
            'assets',
            'public'
        );

        $asset = Asset::create($data);

        return response()->json([
            'success' => true,
            'data' => $asset
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $asset = Asset::findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $asset
        ]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $asset = Asset::findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $asset
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // mencari asset berdasarkan id
        $asset = Asset::findOrFail($id);

        $data = $request->all();

        // jika user mengirimkan file image
        if ($request->hasFile('image')) {
            $data['image'] = $request->file('image')->store(
                'assets',
                'public'
            );
        }

        // update data asset
        $asset->update($data);

        return response()->json([
            'success' => true,
            'data' => $asset
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // mencari asset berdasarkan id
        $asset = Asset::findOrFail($id);

        // menghapus asset
        $asset->delete();

        return response()->json([
            'success' => true,
            'message' => 'Asset berhasil dihapus'
        ]);

    }
}
