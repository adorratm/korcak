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
                        <?php if (!empty($product->category_ids)) : ?>
                            <li>
                                <?php $i = 1 ?>
                                <?php $count = count(explode(",", $product->category_ids)) ?>
                                <?php foreach (explode(",", $product->category_titles) as $k => $v) : ?>
                                    <?php $seo_url = explode(",", $product->category_seos)[$k]; ?>
                                    <?php if ($i < $count) : ?>
                                        <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$seo_url}") ?>" title="<?= strto("lower|ucwords", $v) ?>"><?= strto("lower|ucwords", $v) ?></a>,
                                    <?php else : ?>
                                        <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$seo_url}") ?>" title="<?= strto("lower|ucwords", $v) ?>"><?= strto("lower|ucwords", $v) ?></a>
                                    <?php endif ?>
                                    <?php $i++ ?>
                                <?php endforeach ?>
                            </li>
                        <?php endif ?>
                        <li>
                            <?= strto("lower|ucwords", $product->title) ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End-->



<!-- Shop details Area start -->
<section class="product-details-area slider-product">
    <div class="container">
        <div class="container-2 container-3 ">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="single-product-sticky  mb-30px">
                        <div id="carouselExampleCaptions" class="carousel slide  carousel-dark" data-bs-ride="carousel">
                            <div class="carousel-inner product-content  wow fadeInUp lightgallery" data-wow-delay="300ms">
                                <?php $i = 0 ?>
                                <?php if (!empty($product_own_images)) : ?>
                                    <?php foreach ($product_own_images as $k => $v) : ?>
                                        <?php if ($v->product_id == $product->id) : ?>
                                            <div class="carousel-item zoompro-wrap item <?= $i == 0 ? "active" : null ?>" data-index="<?= $i ?>">
                                                <a rel="dofollow" title="<?= $product->title ?>" data-exthumbimage="<?= get_picture("products_v", $v->url) ?>" href="<?= get_picture("products_v", $v->url) ?>" data-index="<?= $i ?>" class="d-block fancyboximg top-img product-simple-preview-image lightimg">
                                                    <img width="1920" height="1280" loading="lazy" data-src="<?= get_picture("products_v", $v->url) ?>" title="<?= $product->title ?>" alt="<?= $product->title ?>" data-zoom-image="<?= get_picture("products_v", $v->url) ?>" class="product-zoom rounded img-fluid product-simple-preview-image-zoom lazyload">
                                                </a>
                                            </div>
                                            <?php $i++ ?>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php endif ?>
                                <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-prev btn" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon bg-secondary" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </button>
                                <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-next btn" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                    <span class="carousel-control-next-icon bg-secondary" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </button>
                            </div>
                            <div class="product-thumbs-wrapper border-top">
                                <div class="carousel-indicators owl-thumbs position-relative d-flex d-md-block d-lg-flex d-xxl-block mx-0 mx-xxl-0">
                                    <?php $i = 0 ?>
                                    <?php if (!empty($product_own_images)) : ?>
                                        <?php foreach ($product_own_images as $k => $v) : ?>
                                            <?php if ($v->product_id == $product->id) : ?>
                                                <div data-target="#carouselExampleCaptions" style="max-width: 135px;" class="owl-thumb-item border mx-0 mx-xxl-0 single-product-thumbb <?= ($i == 0 ? "active" : null) ?>" data-touch="true" data-slide-to="<?= $i ?>" data-image="<?= get_picture("products_v", $v->url) ?>">
                                                    <div class="top-img">
                                                        <img width="1920" height="1280" loading="lazy" data-src="<?= get_picture("products_v", $v->url) ?>" title="<?= $product->title ?>" alt="<?= $product->title ?>" class="lazyload img-fluid">
                                                    </div>
                                                </div>
                                                <?php $i++ ?>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="product-details-content sticky">
                        <h2><?= $product->title ?></h2>
                        <div class="product-tags">
                            <ul>
                                <li><?= lang("productCategories") ?>:</li>
                                <?php if (!empty($product->category_ids)) : ?>
                                    <?php $i = 1 ?>
                                    <?php $count = count(explode(",", $product->category_ids)) ?>
                                    <?php foreach (explode(",", $product->category_titles) as $k => $v) : ?>
                                        <li>
                                            <?php $seo_url = explode(",", $product->category_seos)[$k]; ?>
                                            <?php if ($i < $count) : ?>
                                                <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$seo_url}") ?>" title="<?= strto("lower|ucwords", $v) ?>"><?= strto("lower|ucwords", $v) ?></a>,
                                            <?php else : ?>
                                                <a rel="dofollow" href="<?= base_url(lang("routes_products") . "/{$seo_url}") ?>" title="<?= strto("lower|ucwords", $v) ?>"><?= strto("lower|ucwords", $v) ?></a>
                                            <?php endif ?>
                                            <?php $i++ ?>
                                        </li>
                                    <?php endforeach ?>
                                <?php endif ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop details Area End -->
<!-- product details description area start -->
<div class="description-review-area ptb-60px">
    <div class="container">
        <div class="description-review-wrapper">
            <div class="description-review-topbar nav">
                <a class="active" data-bs-toggle="tab" href="#des-details1"><?= lang("description") ?></a>
            </div>
            <div class="tab-content description-review-bottom">
                <div id="des-details1" class="tab-pane active">
                    <div class="product-anotherinfo-wrapper">
                        <?= $product->content ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product details description area end -->

<?php if (!empty($simular_products)) : ?>
    <?php $this->load->view("includes/productSlider", ["data" => $simular_products, "title" => lang("sameProducts")]) ?>
<?php endif ?>

<script>
    window.addEventListener('DOMContentLoaded', function() {
        if (($('#lightgallery, .lightgallery').length > 0)) {
            $('#lightgallery, .lightgallery').lightGallery({
                selector: '.lightimg',
                loop: !0,
                thumbnail: !0,
                exThumbImage: 'data-exthumbimage',
                download: false,
            })
        }
        if (($('#lightgallery2, .lightgallery2').length > 0)) {
            $('#lightgallery2, .lightgallery2').lightGallery({
                selector: '.lightimg2',
                loop: !0,
                thumbnail: !0,
                exThumbImage: 'data-exthumbimage2',
                download: false
            })
        }
        const myCarouselElement = document.querySelector('.carousel');

        const carousel = new bootstrap.Carousel(myCarouselElement, {
            interval: 2000,
            touch: true
        });
        $(".carousel").on("slid.bs.carousel", function(event) {
            $(".single-product-thumbb:not('.d-none')[data-bs-slide-to=" + event.from + "]").removeClass("active");
            $(".single-product-thumbb:not('.d-none')[data-bs-slide-to=" + event.to + "]").addClass("active");
            let x = $(".single-product-thumbb.active:not('.d-none')[data-bs-slide-to=" + event.to + "]").width();
            $('.owl-thumbs').animate({
                scrollLeft: event.to * x
            }, 500);
        });
    });
</script>