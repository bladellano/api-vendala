<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\API\ApiError;

class ProductController extends Controller
{
    /**
     * @var Product
     */
    private $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    public function index()
    {
        $bPagination = (isset($_GET['pagination']))?$_GET['pagination']:"";
        $data = ['data'=>$this->product->all()];

        if($bPagination)
            $data = ['data'=>$this
                ->product
                ->orderBy('created_at', 'desc')
                ->paginate(5)];
        return response()->json($data);
    }

    public function show($id)
    {
        header("access-control-allow-origin: *");
        $product = $this->product->find($id);
        if(!$product) return response()->json(ApiError::errorMessage('Produto não encontrado',4040),404);
        $data = ['data' => $product];
        return response()->json($data);
    }

    public function store(Request $request)
    {
        header("access-control-allow-origin: *");
        $productData = $request->all();

        $images = $request->file('images');
        if($images){
            $allPaths = [];
            foreach ($images as $image){
                $allPaths[] = $path = $image->store('images','public');
            }
            $productData = $request->all();
            $productData['path_img'] = implode("|",$allPaths);//É criado mais uma chave.
        }

        try {
            $this->product->create($productData);
            $return = ['data'=>['success'=>true,'msg'=>'Produto criado com sucesso']];
            return response()->json($return,201);

        } catch (\Exception $e) {

            if(config('app.debug')){
                return response()->json(ApiError::errorMessage($e->getMessage(),1010),500);
            }
            return response()->json(ApiError::errorMessage('Houve um erro ao realizar operação de criação',1010),500);
        }

    }
    public function update(Request $request,$id)
    {
        header("access-control-allow-origin: *");
        try {

            $productData = $request->all();
            $product = $this->product->find($id);
            $product->update($productData);

            $return = ['data'=>['msg'=>'Produto atualizado com sucesso']];

            return response()->json($return,201);

        } catch (\Exception $e) {

            if(config('app.debug')){
                return response()->json(ApiError::errorMessage($e->getMessage(),1011),500);
            }
            return response()->json(ApiError::errorMessage('Houve um erro ao realizar operação de atualizar',1011),500);
        }

    }

    public function delete(Product $id)
    {
        header("access-control-allow-origin: *");
        try {

            $id->delete();

            return response()->json(['data'=>['success'=>true,'msg'=>'Produto: '.$id->name.' removido com sucesso!']],200);

        } catch (\Exception $e) {

            if(config('app.debug')){
                return response()->json(ApiError::errorMessage($e->getMessage(),1012),500);
            }
            return response()->json(ApiError::errorMessage('Houve um erro ao realizar operação de remover',1012),500);
        }
    }
}
