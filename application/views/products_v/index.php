<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<section class="page-title" style="background-image: url(<?= !empty($products_category) && !empty($products_category->img_url) ? get_picture("product_categories_v", $products_category->banner_url) : get_picture("settings_v", $settings->product_logo) ?>);">
    <div class="auto-container">
        <div class="content-box">
            <div class="content-wrapper">
                <div class="title">
                    <h1><?= !empty($products_category) ? strto("lower|ucwords", $products_category->title) : strto("lower|ucwords", lang("products")) ?></h1>
                </div>
                <ul class="bread-crumb style-two">
                    <li>
                        <a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|ucwords", lang("home")) ?>"><?= strto("lower|ucwords", lang("home")) ?></a>
                    </li>
                    <li>
                        <a href="<?= base_url(lang("routes_products")); ?>" rel="dofollow" title="<?= strto("lower|ucwords", lang("products")) ?>"><?= strto("lower|ucwords", lang("products")) ?></a>
                    </li>
                    <?php if (!empty($products_category)) : ?>
                        <li class="active">
                            <?= strto("lower|ucwords", $products_category->title) ?>
                        </li>
                    <?php endif ?>
                </ul>
            </div>
        </div>
    </div>
</section>


<!-- Shop section -->
<section class="shop-section">
    <div class="auto-container">
        <div class="row align-items-stretch align-self-stretch align-content-stretch">
            <?php $product_categories = $this->general_model->get_all("product_categories", null, "rank ASC", ["isActive" => 1,"lang" => $this->viewData->lang]); ?>
            <?php $j = 0 ?>
            <?php foreach ($product_categories as $k => $v) : ?>
                <div class="col-lg-12 justify-content-center text-center">
                    <h2 class="font-weight-bold text-center mx-auto mb-5 p-3" <?= $j % 2 == 0 ? 'style="width: fit-content;border:3px solid #e10018;border-top:unset;border-right:unset"' : 'style="width: fit-content;border:3px solid #e10018;border-top:unset;border-left:unset"' ?>><?= $v->title ?></h2>
                </div>
                <?php
                $search = null;
                if (!empty(clean($this->input->get("search")))) :
                    $search = clean($this->input->get("search"));
                endif;
                $seo_url = $this->uri->segment(3);
                $category_id = null;
                $category = null;
                if (!empty($seo_url) && !is_numeric($seo_url)) :
                    $category = $this->general_model->get("product_categories", null, ["isActive" => 1, "lang" => $this->viewData->lang, "seo_url" => $seo_url]);
                    if (!empty($category)) :
                        $category_id = $category->id;
                        $category->seo_url = (!empty($category->seo_url) ? $category->seo_url : null);
                        $category->title = (!empty($category->title) ? $category->title : null);
                    endif;
                endif;
                /**
                 * Order
                 */
                $order = !empty($_GET["orderBy"]) ? clean($_GET["orderBy"]) : "p.id ASC";
                /**
                 * Likes
                 */
                $likes = [];
                if (!empty($search)) :
                    $likes["p.title"] = $search;
                    $likes["p.content"] = $search;
                    $likes["p.createdAt"] = $search;
                    $likes["p.updatedAt"] = $search;
                    $likes["p.description"] = $search;
                    $likes["p.features"] = $search;
                endif;
                $wheres = [];
                if (!empty($category_id)) :
                    //$wheres["pwc.category_id"] = $category_id;
                endif;
                /**
                 * Wheres
                 */
                $wheres["p.isActive"] = 1;
                $wheres["pi.isCover"] = 1;
                $wheres["pc.id"] = $v->id;

                $wheres["p.lang"] = $this->viewData->lang;
                $joins = ["products_w_categories pwc" => ["p.id = pwc.product_id", "left"], "product_categories pc" => ["pwc.category_id = pc.id", "left"], "product_images pi" => ["pi.product_id = p.id", "left"]];

                $select = "GROUP_CONCAT(pc.seo_url) category_seos,GROUP_CONCAT(pc.title) category_titles,GROUP_CONCAT(pc.id) category_ids,p.id,p.title,p.url,pi.url img_url,p.isActive,p.sharedAt";
                $distinct = true;
                $groupBy = ["p.id", "pwc.product_id"];
                $products = $this->general_model->get_all("products p", $select, $order, $wheres, $likes, $joins, [], [], $distinct, $groupBy);

                ?>
                <?php if (!empty($products)) : ?>
                    <?php foreach ($products as $key => $value) : ?>
                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                            <div class="col-lg-3 col-md-6 shop-block mb-4">
                                <div class="inner-box mb-0 h-100 shadow-sm p-3 border rounded">
                                    <div class="image"><a rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>"> <img width="1920" height="1280" loading="lazy" data-src="<?= get_picture("products_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="img-fluid lazyload"></a></div>
                                    <div class="content-upper mb-0 border-0">
                                        <h3><a class="text-dark" rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h3>
                                    </div>
                                    <div class="w-100 px-3">
                                        <a class="btn rounded-0 btn-block border technicalInformationButton" rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . lang("routes_product") . "/{$value->url}") ?>" title="<?= $value->title ?>"><?= lang("viewTechnicalInformation") ?></a>
                                    </div>
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
                <?php $j++ ?>
            <?php endforeach ?>
        </div>
        <?= @$links ?>
    </div>
</section>