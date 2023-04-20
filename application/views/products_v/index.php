<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|ucwords", lang("home")) ?>"><?= strto("lower|ucwords", lang("home")) ?></a></li>
                        <li>
                            <a href="<?= base_url(lang("routes_products")); ?>" rel="dofollow" title="<?= strto("lower|ucwords", lang("products")) ?>"><?= strto("lower|ucwords", lang("products")) ?></a>
                        </li>
                        <?php if (!empty($products_category)) : ?>
                            <li>
                                <?= strto("lower|ucwords", $products_category->title) ?>
                            </li>
                        <?php endif ?>
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
                            <div class="row m-0">

                                <?php if (!empty($products) && !empty($products_category)) : ?>
                                    <?php foreach ($products as $key => $value) : ?>
                                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                                            <div class="mb-30px col-md-3 col-sm-6  p-0">
                                                <div class="slider-single-item">
                                                    <!-- Single Item -->
                                                    <article class="list-product p-0 ">
                                                        <div class="product-inner">
                                                            <div class="img-block">
                                                                <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>" class="thumbnail">
                                                                    <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("products_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload w-100 first-img">
                                                                    <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("products_v", get_secondary_image($value->id, $value->lang)) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload w-100 second-img">
                                                                </a>
                                                            </div>
                                                            <div class="product-decs">
                                                                <h2 class="text-center mb-0"><a class="product-link text-center mb-0" rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h2>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <!-- Single Item -->
                                                </div>
                                            </div>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <?php if (!empty($categories) && empty($products_category)) : ?>
                                        <?php foreach ($categories as $key => $value) : ?>
                                            <div class="mb-30px col-md-3 col-sm-6  p-0">
                                                <div class="slider-single-item">
                                                    <!-- Single Item -->
                                                    <article class="list-product p-0 ">
                                                        <div class="product-inner">
                                                            <div class="img-block">
                                                                <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>" class="thumbnail">
                                                                    <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("product_categories_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload w-100 first-img">
                                                                </a>
                                                            </div>
                                                            <div class="product-decs">
                                                                <h2 class="text-center mb-0"><a class="product-link text-center mb-0" rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h2>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <!-- Single Item -->
                                                </div>
                                            </div>
                                        <?php endforeach ?>
                                    <?php endif ?>
                                <?php endif ?>
                            </div>
                        </div>
                        <!-- Tab Two End -->
                    </div>
                    <!-- Shop Tab Content End -->
                    <!--  Pagination Area Start -->
                    <?php if (!empty($links) && !empty($products_category)) : ?>
                        <div class="pro-pagination-style text-center  mb-60px">
                            <div class="pages">
                                <?= @$links ?>
                            </div>
                        </div>
                    <?php endif ?>
                    <!--  Pagination Area End -->
                </div>
                <!-- Shop Bottom Area End -->
            </div>
        </div>
    </div>
</div>
<!-- Shop Category Area End -->