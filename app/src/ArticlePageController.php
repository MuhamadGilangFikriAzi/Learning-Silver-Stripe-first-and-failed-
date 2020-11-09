<?php

use SilverStripe\View\Requirements;

class ArticlePageController extends PageController{
    protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
            Requirements::javascript('javascript/script.js');
            Requirements::css('css/editor.css');
            Requirements::css('css/form.css');
            Requirements::css('css/layout.css');
            Requirements::css('css/reset.css');
            Requirements::css('css/typography.css');
            Requirements::css('css/bootstrap.css');

        }
}