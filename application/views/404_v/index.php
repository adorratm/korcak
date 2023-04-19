<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Error Section-->
<section class="error-section">
    <div class="auto-container">
        <div class="image"><img loading="lazy" data-src="<?= asset_url("public/images/404.webp") ?>" title="<?= lang("pageNotFound") ?>" alt="<?= lang("pageNotFound") ?>" class="img-fluid lazyload" width="550" height="515"></div>
        <h2><?= lang("pageNotFound") ?></h2>
        <div class="text"><?= lang("404Desc") ?></div>
        <div class="link"><a class="theme-btn" rel="dofollow" href="<?= base_url() ?>" title="<?= lang("404Home") ?>"><span><?= lang("404Home") ?></span></a></div>
    </div>
</section>