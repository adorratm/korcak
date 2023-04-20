<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if (!empty($data)) : ?>
    <!-- Arrivel Area Start -->
    <div class="arrival-area mtb-60px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2><?= $title ?></h2>
                    </div>
                </div>
            </div>
            <div class="arrival-wrapper">
                <div class="arrival-slider slider-nav-style-1">
                    <?php foreach ($data as $key => $value) : ?>
                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                            <div class="arrval-slider-item">
                                <article class="list-product text-left">
                                    <div class="product-inner">
                                        <div class="img-block">
                                            <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>" class="thumbnail">
                                                <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("products_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload first-img">
                                                <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("products_v", get_secondary_image($value->id, $value->lang)) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload second-img">
                                            </a>
                                        </div>
                                        <div class="product-decs">
                                            <h2 class="text-center mb-0">
                                                <a class="product-link text-center mb-0" rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a>
                                            </h2>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        <?php endif ?>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Arrivel Area End -->
<?php endif ?>