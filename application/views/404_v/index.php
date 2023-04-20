<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|upper", lang("home")) ?>"><?= strto("lower|upper", lang("home")) ?></a></li>
                        <li><?= lang("pageNotFound") ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End-->
<!-- login area start -->
<div class="blank-page-area mb-60px">
    <div class="container">
        <div class="container-inner">
            <div class="row">
                <div class="col-md-12">
                    <div class="blank-content-header text-center">
                        <img loading="lazy" data-src="<?= asset_url("public/images/404.webp") ?>" title="<?= lang("pageNotFound") ?>" alt="<?= lang("pageNotFound") ?>" class="img-fluid lazyload" width="550" height="515">
                    </div>
                    <div class="page-not-found text-center">
                        <h4><?= lang("pageNotFound") ?></h4>
                        <p><?= lang("404Desc") ?></p>
                        <a rel="dofollow" href="<?= base_url() ?>" title="<?= lang("404Home") ?>"><?= lang("404Home") ?></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- login area end -->