<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Page Title -->
<section class="page-title" style="background-image: url(<?= !empty($item->banner_url) ? get_picture("pages_v", $item->banner_url)  : get_picture("settings_v", $settings->about_logo) ?>);">
    <div class="auto-container">
        <div class="content-box">
            <div class="content-wrapper">
                <div class="title">
                    <h1><?= strto("lower|ucwords", $item->title) ?></h1>
                </div>
                <ul class="bread-crumb style-two">
                    <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|upper", lang("home")) ?>"><?= strto("lower|upper", lang("home")) ?></a></li>
                    <li class="active"><?= strto("lower|upper", $item->title) ?></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- About section Five -->
<section class="about-section-five <?= $item->type === "ABOUT" || $item->type === "CONTENT" ? "pt-3" : null ?>">
    <?php if ($item->type === "ABOUT" || $item->type === "CONTENT") : ?>
        <div class="auto-container">
            <div class="row triggerFixed align-items-stretch align-self-stretch align-content-stretch">
                <div class="col-lg-12 image-column bg-white h-100">
                    <div class="title-box rounded p-3">
                        <div class="sec-title mb-0">
                            <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type,"lang" => $this->viewData->lang]); ?>
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
    <?php endif ?>

    <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type,"lang" => $this->viewData->lang]); ?>
    <?php if ($item->type === "ABOUT") : ?>
        <?php $i = 0 ?>
        <?php foreach ($pages as $key => $value) : ?>
            <div class="container-fluid  <?= $i % 2 != 0 ? "bg-dark py-4" : null ?>" id="<?= $value->url ?>">
                <div class="auto-container">
                    <div class="row align-items-center align-self-center align-content-center my-4">
                        <?php if (!empty($value->img_url)) : ?>
                            <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                <div class="image text-center justify-content-center d-flex"><img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty(clean($value->content))) : ?>
                            <div class="col-lg-6 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                <h2 class="font-weight-bold mb-4 <?= $i % 2 == 0 ? "text-dark" : "text-white" ?>"><?= $value->title ?></h2>
                                <div class="text <?= $i % 2 != 0 ? "text-white" : null ?>">
                                    <?= $value->content ?>
                                </div>
                            </div>
                        <?php endif ?>
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
                <div class="auto-container">
                    <div class="row align-items-center align-self-center align-content-center my-4 <?= $i % 2 != 0 ? "py-4" : null ?>">
                        <?php if (!empty($value->img_url)) : ?>
                            <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                <div class="image text-center justify-content-center d-flex"><img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty(clean($value->content))) : ?>
                            <div class="col-lg-6 order-1 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                <h2 class="font-weight-bold mb-4 text-dark"><?= $value->title ?></h2>
                                <div class="text">
                                    <?= $value->content ?>
                                </div>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php $i++ ?>
        <?php endforeach ?>
    <?php endif ?>
    <?php if ($item->type === "KVKK") : ?>

        <div class="container-fluid">
            <div class="auto-container">
                <div class="row align-items-center align-self-center align-content-center my-4">
                    <div class="col-lg-12 h-100">
                        <div class="accordion" id="accordionExample">
                            <?php $i = 0 ?>
                            <?php foreach ($pages as $key => $value) : ?>
                                <div class="card">
                                    <div class="card-header bg-white" id="heading<?= $i ?>">
                                        <h2 class="mb-0">
                                            <button style="box-shadow:none" class="btn btn-link btn-block p-1 text-left font-weight-bold text-dark" type="button" data-toggle="collapse" data-target="#collapse<?= $i ?>" aria-expanded="true" aria-controls="collapse<?= $i ?>">
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

    <?php endif ?>
    <?php if ($item->type === "SIMPLE") : ?>
        <div class="auto-container">
            <div class="row align-items-center align-self-center align-content-center">
                <?php if (!empty($item->img_url)) : ?>
                    <div class="col-lg-12 h-100">
                        <div class="image text-center justify-content-center d-flex"><img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $item->img_url) ?>" title="<?= $item->title ?>" alt="<?= $item->title ?>"></div>
                    </div>
                <?php endif ?>
                <?php if (!empty(clean($item->content))) : ?>
                    <div class="col-lg-12 h-100">
                        <div class="text">
                            <?= $item->content ?>
                        </div>
                    </div>
                <?php endif ?>
            </div>
        </div>
    <?php endif ?>

    </div>
</section>

<?php if ($item->type === "ABOUT") : ?>
    <section class="statement-section vmm">
        <div class="container">
            <div class="row align-items-stretch">
                <?php if (!empty(clean($settings->mission))) : ?>
                    <div class="col-12 col-sm-12 col-md-12 col-lg statement-block">
                        <div class="card border h-100">
                            <div class="card-header d-flex align-items-center justify-content-between text-center">
                                <div class="text-center flex-shrink-1 my-auto">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= asset_url("public/images/misyonumuz.webp") ?>" title="<?= lang("ourMission") ?>" alt="<?= lang("ourMission") ?>">
                                </div>
                                <div class="card-title text-center flex-grow-1 my-auto">
                                    <h4 class="text-center my-auto"><?= lang("ourMission") ?></h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="text">
                                    <?= $settings->mission ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
                <?php if (!empty(clean($settings->vision))) : ?>
                    <div class="col-12 col-sm-12 col-md-12 col-lg statement-block">
                        <div class="card border h-100">
                            <div class="card-header d-flex align-items-center justify-content-between text-center">
                                <div class="text-center flex-shrink-1 my-auto">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= asset_url("public/images/vizyonumuz.webp") ?>" title="<?= lang("ourVision") ?>" alt="<?= lang("ourVision") ?>">
                                </div>
                                <div class="card-title text-center flex-grow-1 my-auto">
                                    <h4 class="text-center my-auto"><?= lang("ourVision") ?></h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="text">
                                    <?= $settings->vision ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
                <?php if (!empty(clean($settings->motto))) : ?>
                    <div class="col-12 col-sm-12 col-md-12 col-lg statement-block">
                        <div class="card border h-100">
                            <div class="card-header d-flex align-items-center justify-content-between text-center">
                                <div class="text-center flex-shrink-1 my-auto">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= asset_url("public/images/degerlerimiz.webp") ?>" title="<?= lang("ourMotto") ?>" alt="<?= lang("ourMotto") ?>">
                                </div>
                                <div class="card-title text-center flex-grow-1 my-auto">
                                    <h4 class="text-center my-auto"><?= lang("ourMotto") ?></h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="text">
                                    <?= $settings->motto ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
            </div>
        </div>
    </section>
<?php endif ?>

<section class="about-section-five pt-3"></section>