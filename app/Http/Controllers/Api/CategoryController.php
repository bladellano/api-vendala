<?php

namespace App\Http\Controllers\Api;

use App\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
#use App\Product;
use App\API\ApiError;

class CategoryController extends Controller
{
    /**
     * @var Category
     */
    private $category;

    public function __construct(Category $category)
    {
        $this->$category = $category;
    }

    public function index()
    {
        $aEletronicos = Category::getCategories('https://api.mercadolibre.com/categories/MLB1000');
        $aGames = Category::getCategories('https://api.mercadolibre.com/categories/MLB1144');
        $aInformatica = Category::getCategories('https://api.mercadolibre.com/categories/MLB1648');

        $data = array_merge($aEletronicos, $aGames, $aInformatica);

        return response()->json($data);
    }

 /*
    public function show($id)
    {

        $product = $this->product->find($id);
        // if(!$product) return response()->json(['data'=>['msg'=>'Produção não encontrado']],404);
        if(!$product) return response()->json(ApiError::errorMessage('Produto não encontrado',4040),404);
        $data = ['data' => $product];
        return response()->json($data);
    }

    public function store(Request $request)
    {

        try {

            $productData = $request->all();
            $this->product->create($productData);
            $return = ['data'=>['msg'=>'Produto criado com sucesso']];
            return response()->json($return,201);

        } catch (\Exception $e) {

            if(config('app.debug')){
                return response()->json(ApiError::errorMessage($e->getMessage(),1010),500);
            }
            return response()->json(ApiError::errorMessage('Houve um erro ao realizar operação',1010),500);
        }

    }
    public function update(Request $request,$id)
    {

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
        try {

            $id->delete();

            return response()->json(['data'=>['msg'=>'Produto:'.$id->name.' removido com sucesso!']],200);

        } catch (\Exception $e) {

            if(config('app.debug')){
                return response()->json(ApiError::errorMessage($e->getMessage(),1012),500);
            }
            return response()->json(ApiError::errorMessage('Houve um erro ao realizar operação de remover',1012),500);
        }
    }
 */
}
