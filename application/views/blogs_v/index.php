<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a href="<?= base_url(); ?>"><?= strto("lower|ucwords", lang("home")) ?></a></li>
                        <li><?= strto("lower|ucwords", lang("blog")); ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End-->

<!-- Shop Category Area End -->
<div class="shop-category-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <!-- Shop Bottom Area Start -->
                <div class="shop-bottom-area mb-60px">
                    <!-- Shop Tab Content Start -->
                    <div class="tab-content jump">
                        <!-- Tab Two Start -->
                        <div id="shop-2" class="tab-pane active">
                            <div class="row justify-content-center align-items-stretch align-self-stretch align-content-stretch">
                                <?php if (!empty($blogs)) : ?>
                                    <?php foreach ($blogs as $key => $value) : ?>
                                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                                            <div class="mb-30px col-md-8 col-sm-8 p-0">
                                                <div class="slider-single-item">
                                                    <!-- Single Item -->
                                                    <article class="list-product p-0 ">
                                                        <div class="product-inner">
                                                            <div class="img-block">
                                                                <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>" class="thumbnail">
                                                                    <img data-src="<?= get_picture("blogs_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100 first-img">
                                                                </a>
                                                            </div>
                                                            <div class="product-decs">
                                                                <h2 class="text-center mb-4"><a class="text-center mb-0" rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h2>
                                                                <p class="text-center"><?= mb_word_wrap($value->content, 500, "...") ?></p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <!-- Single Item -->
                                                </div>
                                            </div>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <div class="alert alert-danger col-12" role="alert">
                                        <h4 class="alert-heading"><?= lang("warning") ?>!</h4>
                                        <hr>
                                        <p><?= lang("categoryEmpty") ?></p>
                                    </div>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>

                    <?php if (!empty($links)) : ?>
                        <div class="pro-pagination-style text-center  mb-60px">
                            <div class="pages">
                                <?= @$links ?>
                            </div>
                        </div>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- News Section -->