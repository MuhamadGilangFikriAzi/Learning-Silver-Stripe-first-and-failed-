<?php

namespace SilverStripe\Lessons;

use ArticlePage;
use Page;

class ArticleHolder extends Page{
    private static $allowed_childern = [
        ArticleHolder::class
    ];
}