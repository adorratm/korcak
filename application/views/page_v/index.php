<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>



<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|upper", lang("home")) ?>"><?= strto("lower|upper", lang("home")) ?></a></li>
                        <li class="active"><?= strto("lower|upper", $item->title) ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End-->
<!-- About section Five -->
<section class="about-area mb-60px <?= $item->type === "ABOUT" || $item->type === "CONTENT" ? "pt-3" : null ?>">
    <?php if ($item->type === "ABOUT" || $item->type === "CONTENT") : ?>
        <div class="container">
            <div class="container-inner">
                <div class="row triggerFixed align-items-stretch align-self-stretch align-content-stretch">
                    <div class="col-lg-12 image-column bg-white h-100">
                        <div class="title-box rounded p-3">
                            <div class="sec-title mb-0">
                                <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type, "lang" => $this->viewData->lang]); ?>
                                <?php if (!empty($pages)) : ?>
                                    <ul class="nav pageNav justify-content-center" id="fixingBar">
                                        <?php foreach ($pages as $key => $value) : ?>
                                            <li class="nav-item border-right"><a class="nav-link text-dark <?= $this->uri->segment(3) == $value->url ? "active" : null ?>" style="font-weight: 600;font-size:13px;" rel="dofollow" title="<?= $value->title ?>" href="#<?= $value->url ?>"><?= $value->title ?></a></li>
                                        <?php endforeach ?>
                                    </ul>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif ?>
    <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type, "lang" => $this->viewData->lang]); ?>
    <?php if ($item->type === "ABOUT") : ?>
        <?php $i = 0 ?>
        <?php foreach ($pages as $key => $value) : ?>
            <div class="container-fluid  <?= $i % 2 != 0 ? "bg-dark py-4" : null ?>" id="<?= $value->url ?>">
                <div class="container">
                    <div class="container-inner">
                        <div class="row align-items-center align-self-center align-content-center my-4">
                            <?php if (!empty($value->img_url)) : ?>
                                <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                    <div class="about-left-image mb-md-30px mb-lm-30px "><img width="1000" height="1000" loading="lazy" class="img-fluid w-100 lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                                </div>
                            <?php endif ?>
                            <?php if (!empty(clean($value->content))) : ?>
                                <div class="col-lg-6 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                    <div class="about-content">
                                        <div class="about-title">
                                            <h2 class="font-weight-bold mb-4 <?= $i % 2 == 0 ? "text-dark" : "text-white" ?>"><?= $value->title ?></h2>
                                        </div>
                                        <div class="text <?= $i % 2 != 0 ? "text-white" : null ?>">
                                            <?= $value->content ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php $i++ ?>
        <?php endforeach ?>
    <?php endif ?>
    <?php if ($item->type === "CONTENT") : ?>
        <?php $i = 0 ?>
        <?php foreach ($pages as $key => $value) : ?>
            <div class="container-fluid" id="<?= $value->url ?>">
                <div class="container">
                    <div class="container-inner">
                        <div class="row align-items-center align-self-center align-content-center my-4 <?= $i % 2 != 0 ? "py-4" : null ?>">
                            <?php if (!empty($value->img_url)) : ?>
                                <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                    <div class="about-left-image mb-md-30px mb-lm-30px "><img width="1000" height="1000" loading="lazy" class="img-fluid w-100 lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                                </div>
                            <?php endif ?>
                            <?php if (!empty(clean($value->content))) : ?>
                                <div class="col-lg-6 order-1 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                    <div class="about-title">
                                        <h2 class="font-weight-bold mb-4 text-dark"><?= $value->title ?></h2>
                                    </div>
                                    <div class="text">
                                        <?= $value->content ?>
                                    </div>
                                </div>
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php $i++ ?>
        <?php endforeach ?>
    <?php endif ?>
    <?php if ($item->type === "KVKK") : ?>

        <div class="container-fluid">
            <div class="container">
                <div class="container-inner">
                    <div class="row align-items-center align-self-center align-content-center my-4">
                        <div class="col-lg-12 h-100">
                            <div class="accordion" id="accordionExample">
                                <?php $i = 0 ?>
                                <?php foreach ($pages as $key => $value) : ?>
                                    <div class="card">
                                        <div class="card-header bg-white" id="heading<?= $i ?>">
                                            <h2 class="mb-0">
                                                <button style="box-shadow:none" class="btn btn-link btn-block p-1 text-left font-weight-bold text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#collapse<?= $i ?>" aria-expanded="true" aria-controls="collapse<?= $i ?>">
                                                    <?= $value->title ?>
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="collapse<?= $i ?>" class="collapse <?= $value->url == $this->uri->segment(3) ? "show" : null ?>" aria-labelledby="heading<?= $i ?>" data-parent="#accordionExample">
                                            <div class="card-body text">
                                                <?= $value->content ?>
                                            </div>
                                        </div>
                                    </div>
                                    <?php $i++ ?>
                                <?php endforeach ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php endif ?>
    <?php if ($item->type === "SIMPLE") : ?>
        <div class="container">
            <div class="container-inner">
                <div class="row align-items-center align-self-center align-content-center">
                    <?php if (!empty($item->img_url)) : ?>
                        <div class="col-lg-12 h-100">
                            <div class="about-left-image mb-md-30px mb-lm-30px "><img width="1000" height="1000" loading="lazy" class="img-fluid w-100 lazyload" data-src="<?= get_picture("pages_v", $item->img_url) ?>" title="<?= $item->title ?>" alt="<?= $item->title ?>"></div>
                        </div>
                    <?php endif ?>
                    <?php if (!empty(clean($item->content))) : ?>
                        <div class="col-lg-12 h-100">
                            <div class="about-title">
                                <h2 class="font-weight-bold my-4"><?= $item->title ?></h2>
                            </div>
                            <div class="text">
                                <?= $item->content ?>
                            </div>
                        </div>
                    <?php endif ?>
                </div>
            </div>
        </div>
    <?php endif ?>
</section>