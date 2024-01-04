<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;


class AuthController extends Controller
{
    //ini registerr
    public function register(Request $request)
    {
        //mmebuat validasi
        $validator = Validator::make($request->all(), [
            'name' => 'required', //name bersifat required/wajib
            // 'email' => 'required|email|unique:users,email',
            'email' => 'required|string|max:255|unique:users', // email bersifat reqquired dan harus sesuai format
            'password' => 'required|min:8', // password bersifat required dan memiliki panjang minimal 8 karakter
        ]);

        //jika validator gagal, maka akan mengembalikan response berupa eror
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        // if ($validator->fails()) {
        //     return response()->json(['error validatornya']->$validator->errors()->toJson());
        // }

        //user :: create untuk membuat user baru
        $user = User::create([
            'name' => $request->name,
            // ambil name dr request
            'email' => $request->email,
            // ambil email dr request
            'password' => Hash::make($request->password)
            //ambil password dr request
        ]);

        // buat token untuk user yg bru sj dibuat
        $token = $user->createToken('auth_token')->plainTextToken;

        // kembalikan response dalam bentuk json
        return response()->json([
            'data' => $user,
            'access_token' => $token,
            'token_type' => 'Bearer',
        ]);
    }

    //ini login
    public function login(Request $request)
    {
        //autentikasi user, auth::attempt akan mengembalikan nilai true jika berhasil login
        if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return response()->json([
                'message' => 'email atau password salah'
            ], 401);
        }
        //jika email dan password benar
        $user = User::where('email', $request->email)->first();

        //buat token untuk user yg baru login
        $token = $user->createToken('auth_token')->plainTextToken;

        //kembalikan response dlm bentuk json
        return response()->json([
            'data' => $user,
            'access_token' => $token,
            'token_type' => 'Bearer',
        ]);
    }
//logout
    public function logout(Request $request)    {
        //menghapus token yg udh dimilki user
        $request->user()->currentAccessToken()->delete();

        //kembalikan response
        return response()->json([
            'message'=> 'berhasil logout'
            ]);
    }
}
