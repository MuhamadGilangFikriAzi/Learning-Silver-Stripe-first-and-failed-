<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;

class ArticlePage extends Page{

    // private static $can_be_root = false;

    private static $has_one = [
        'Photo' => Image::class,
        'Brochure' => File::class,
    ];


    private static $db = [
        'Date' => 'Date',
        'Teaser' => 'Text',
        'Author' => 'Text',
        'Name' => 'Text',
    ];

    private static $owns = [
        'Photo',
        'Brochure',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', DateField::create('Date','Date of article'), 'Content');
        $fields->addFieldsToTab('Root.Main', TextareaField::create('Teaser')->setDescription('Masukan Teaser'),
        'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Author','Author of article'),'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Name' , 'Name of article')->setDescription('this input for your name'), 'Content');
        $fields->addFieldToTab('Root.Attachments', UploadField::create('Photo'));
        $fields->addFieldToTab('Root.Attachments',  UploadField::create('Brochure', 'Input for brochure (PDF ONLY)'));

    // $photo->setFolderName('travel-photos');

    //     $brochure->getValidator()->setAllowedExtensions(['pdf']);
    //     $brochure->setFolderName('travel-brochure');

        return $fields;
    }
}