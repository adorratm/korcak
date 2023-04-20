<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|ucwords", lang("home")) ?>"><?= strto("lower|ucwords", lang("home")) ?></a></li>
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|ucwords", lang("blog")) ?>"><?= strto("lower|ucwords", lang("blog")) ?></a></li>
                        <li><?= strto("lower|ucwords", $blog->title); ?></li>
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
                                <div class="mb-30px col-md-8 col-sm-8 p-0">
                                    <div class="slider-single-item">
                                        <!-- Single Item -->
                                        <article class="list-product p-0 ">
                                            <div class="product-inner">
                                                <div class="img-block">
                                                    <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("blogs_v", $blog->img_url) ?>" title="<?= $blog->title ?>" alt="<?= $blog->title ?>" class="lazyload img-fluid w-100 first-img">
                                                </div>
                                                <div class="product-decs">
                                                    <h2 class="text-center mb-4"><?= $blog->title ?></h2>
                                                    <p class="text-center"><?= $blog->content ?></p>
                                                </div>
                                            </div>
                                        </article>
                                        <!-- Single Item -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- News Section -->