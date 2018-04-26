<?php

namespace App\Exceptions;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpFoundation\Response;
use \Symfony\Component\Debug\Exception\FatalThrowableError;
use \ErrorException;

trait ExceptionTrait {

    public function apiException($request, $e) {
//        if ($this->isFatalThrowableError($e)) {
//            return response()->json([
//                        'errors' => 'Request Not Found', Response::HTTP_NOT_FOUND
//            ]);
//        }
//        if ($this->isErrorException($e)) {
//            return response()->json([
//                        'errors' => 'Request Not Found', Response::HTTP_NOT_FOUND
//            ]);
//        }
        if ($this->isHttp($e)) {
            return $this->HttpResponse($e);
        }
        if ($this->isModel($e)) {
            return $this->ModelResponse($e);
        }
        
        return parent::render($request, $e);
    }

    protected function isModel($e) {
        return $e instanceof ModelNotFoundException;
    }

    protected function isHttp($e) {
        return $e instanceof NotFoundHttpException;
    }

//    protected function isErrorException($e) {
//        return $e instanceof ErrorException;
//    }
//
//    protected function isFatalThrowableError($e) {
//        return $e instanceof FatalThrowableError;
//    }

    protected function ModelResponse($e) {
        return response()->json([
                    'errors' => 'Product Model not found'
                        ], Response::HTTP_NOT_FOUND);
    }

    protected function HttpResponse($e) {
        return response()->json([
                    'errors' => 'Incorrect route'
                        ], Response::HTTP_NOT_FOUND);
    }

}