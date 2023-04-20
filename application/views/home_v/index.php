<?php if (!empty($slides)) : ?>
    <!-- Slider Start -->
    <div class="slider-area">
        <div class="hero-slider-wrapper">
            <?php $i = 0 ?>
            <?php foreach ($slides as $key => $value) : ?>
                <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                    <?php if ($value->allowButton) : ?>
                        <?php $sUrl = null; ?>
                        <?php if (!empty($value->button_url)) : ?>
                            <?php $sUrl = $value->button_url ?>
                        <?php endif ?>
                        <?php if (!empty($value->category_id) && $value->category_id > 0) : ?>
                            <?php $sCategory = $this->general_model->get("product_categories", null, ["isActive" => 1, "id" => $value->category_id]); ?>
                            <?php if (!empty($sCategory)) : ?>
                                <?php $sUrl = base_url(lang("routes_products") . "/" . $sCategory->seo_url) ?>
                            <?php endif ?>
                        <?php endif ?>
                        <?php if (!empty($value->product_id) && $value->product_id > 0) : ?>
                            <?php $sProduct = $this->general_model->get("products", null, ["isActive" => 1, "id" => $value->product_id]); ?>
                            <?php if (!empty($sProduct)) : ?>
                                <?php $sUrl = base_url(lang("routes_products") . "/" . lang("routes_product") . "/" . $sProduct->url) ?>
                            <?php endif ?>
                        <?php endif ?>
                        <?php if (!empty($value->page_id) && $value->page_id > 0) : ?>
                            <?php $sPage = $this->general_model->get("product_categories", null, ["isActive" => 1, "id" => $value->page_id]); ?>
                            <?php if (!empty($sPage)) : ?>
                                <?php $sUrl = base_url(lang("routes_products") . "/" . $sPage->url) ?>
                            <?php endif ?>
                        <?php endif ?>
                    <?php endif ?>
                    <!-- Single Slider  -->
                    <div class="single-slide slider-height-1 bg-img d-flex">
                        <?php if (!empty($value->allowButton) && !empty($value->button_caption) && !empty($sUrl)) : ?>
                            <a href="<?= $sUrl ?>" rel="dofollow" title="<?= $value->button_caption ?>">
                                <img width="1920" height="700" <?= $i != 0 ?  "loading='lazy' fetchpriority='low'" : "fetchpriority='high'" ?> data-src="<?= get_picture("slides_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                            </a>
                        <?php else : ?>
                            <img width="1920" height="700" <?= $i != 0 ? "loading='lazy' fetchpriority='low'" : "fetchpriority='high'" ?> data-src="<?= get_picture("slides_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                        <?php endif ?>
                    </div>
                    <!-- Single Slider  -->
                    <?php $i++ ?>
                <?php endif ?>
            <?php endforeach ?>
        </div>
    </div>
    <!-- Slider End -->
<?php endif ?>

<?php if (!empty($homeitems)) : ?>
    <div class="static-area pt-60px mb-60px bg-white">

        <p class="text-center"><?= lang("ourVision") ?></p>
        <h2 class="text-center fw-normal"><?= $settings->vision ?></h2>
        <div class="container">
            <div class="static-area-wrap bg-transparent">
                <div class="row align-items-stretch align-self-stretch align-content-stretch">
                    <?php foreach ($homeitems as $key => $value) : ?>
                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                            <!-- Static Single Item Start -->
                            <div class="col-lg-4 col-xs-12 col-md-6 col-sm-6 mb-3 mb-lg-0">
                                <div class="single-static flex-column justify-content-center text-center bg-white h-100 shadow px-4 py-5 hover-img">
                                    <img width="75" height="75" class="lazyload img-fluid mx-auto mb-3" data-src="<?= get_picture("homeitems_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>">
                                    <div class="single-static-meta">
                                        <h4 class="fs-2"><?= $value->title ?></h4>
                                        <p class="fs-6 mt-3"><?= $value->content ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- Static Single Item End -->
                        <?php endif ?>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
        <div class="svg-border-rounded text-light">
            <!-- Rounded SVG Border-->
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 144.54 17.34" preserveAspectRatio="none" fill="currentColor">
                <path d="M144.54,17.34H0V0H144.54ZM0,0S32.36,17.34,72.27,17.34,144.54,0,144.54,0"></path>
            </svg>
        </div>
    </div>
<?php endif ?>

<?php $product_categories = $this->general_model->get_all("product_categories", null, "rank ASC", ["isActive" => 1, "lang" => $this->viewData->lang]); ?>
<?php if (!empty($product_categories)) : ?>
    <?php foreach ($product_categories as $k => $v) : ?>
        <?php
        /**
         * Wheres
         */
        $wheres["p.isActive"] = 1;
        $wheres["pi.isCover"] = 1;
        $wheres["pc.id"] = $v->id;
        $wheres["p.lang"] = $this->viewData->lang;
        $joins = ["products_w_categories pwc" => ["p.id = pwc.product_id", "left"], "product_categories pc" => ["pwc.category_id = pc.id", "left"], "product_images pi" => ["pi.product_id = p.id", "left"]];
        $select = "p.lang,p.id,p.title,p.url,pi.url img_url,p.isActive,p.sharedAt";
        $distinct = true;
        $groupBy = ["p.id", "pwc.product_id"];
        $products = $this->general_model->get_all("products p", $select, null, ["p.isActive" => 1, "pi.isCover" => 1, "pc.id" => $v->id, "p.lang" => $this->viewData->lang], [], $joins, [], [], $distinct, $groupBy);
        ?>
        <?php if (!empty($products)) : ?>
            <!-- Arrivel Area Start -->
            <div class="arrival-area mtb-60px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-title">
                                <h2><?= $v->title ?></h2>
                            </div>
                        </div>
                    </div>
                    <div class="arrival-wrapper">
                        <div class="arrival-slider slider-nav-style-1">
                            <?php foreach ($products as $key => $value) : ?>
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
    <?php endforeach ?>
<?php endif ?>


<?php if (!empty($blogs)) : ?>
    <!-- Blog Area Start -->
    <div class="main-blog-area mb-60px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2><?= lang("blog") ?></h2>
                    </div>
                </div>
            </div>
            <!-- Blog Slider Start -->
            <div class="main-blog-slider-wrapper slider-nav-style-1">
                <?php foreach ($blogs as $key => $value) : ?>
                    <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                        <!-- Blog Slider Silgle Item -->
                        <div class="blog-slider-item">
                            <div class="blog-slider-inner">
                                <div class="aritcles-image">
                                    <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>" class="thumbnail">
                                        <img data-src="<?= get_picture("blogs_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100 first-img">
                                    </a>
                                </div>
                                <div class="aritcles-content">
                                    <div class="content-inner">
                                        <a class="articles-name" rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a>
                                        <div class="articles-intro">
                                            <p><?= mb_word_wrap($value->content, 300, "...") ?></p>
                                        </div>
                                        <a class="read-more" rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?=lang("viewBlog")?></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Blog Slider Silgle Item -->
                    <?php endif ?>
                <?php endforeach ?>
            </div>
            <!-- Blog Slider End -->
        </div>
    </div>
    <!-- Blog Area End -->
<?php endif ?>