<?php

namespace SilverStripe\Lessons;

use Page;

class HomePage extends Page {

    public function getControllerName()
    {
        HomePageController::class;
    }
}