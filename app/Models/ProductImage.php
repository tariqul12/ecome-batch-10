<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;
    private static $productImage, $image, $extension, $imageName, $directory, $imageUrl;

    private static function getImageUrl($image)
    {
        self::$extension    = $image->getClientOriginalExtension(); // png
        self::$imageName    = rand(100, 5000).'.'.self::$extension; // 32123435.png
        self::$directory    = 'upload/ProductImage-images/';
        $image->move(self::$directory, self::$imageName);
        self::$imageUrl     = self::$directory.self::$imageName; // upload/ProductImage-images/32123435.png
        return self::$imageUrl;
    }

    public static function newProductImage($images, $productId)
    {
       foreach ($images as $image)
       {
           self::$imageUrl = self::getImageUrl($image);

           self::$productImage = New ProductImage();
           self::$productImage->product_id = $productId;
           self::$productImage->image = self::$imageUrl;
           self::$productImage->save();
       }
    }



    private static function deleteImageFormFolder($imageUrl)
    {
        if (file_exists($imageUrl))
        {
            unlink($imageUrl);
        }
    }
}
