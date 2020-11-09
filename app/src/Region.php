<?php

use SilverStripe\Forms\TextField;
use phpDocumentor\Reflection\DocBlock\Description;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataObject;

class Region extends DataObject{
    private static $db = [
        'Title' => 'Varchar',
        'Description' => 'Text',
    ];

    private static $has_one =  [
        'Photo' => Image::class,
        'RegionsPage' => RegionsPage::class,
    ];

    private static $owns = [
        'Photo',
    ];

    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create(
                'Title'
            ),
            TextareaField::create(
                'Description',
            ),
            $uploader = UploadField::create('Photo')
        );

        $uploader->setFolderName('region-photos');
        $uploader->getValidator()->setAllowedExtensions(['png','gif','jpeg','jpg']);

        return $fields;
    }
}