<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('product.vueproductlist');
    }
    
     /**
    *  @author : Mayur Panchal
    *  @param  : Request
    *  @uses   : Get listing of products
    *  @return : JSON of data
    **/
    public function getList(Request $request)
    {
        $products = Product::where('status',1)->get();
        return response()->json([
            'products' => $products,
        ]);
    }

    /**
    *  @author : Mayur Panchal
    *  @param  : Request
    *  @uses   : Get Product Information
    *  @return : JSON of data
    **/
    public function getProductDetails(Request $request)
    {
        $productFetch = Product::find($request->id);
        return response()->json($productFetch);
    }
}
