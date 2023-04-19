<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Footer Area Start -->
<div class="footer-area">
    <div class="footer-container">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-4 mb-md-30px mb-lm-30px">
                        <div class="single-wedge">
                            <?php if (!empty($settings->logo)) : ?>
                                <div class="footer-logo">
                                    <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                                        <picture>
                                            <img style="filter:contrast(0)" loading="lazy" width="200" height="106" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                                        </picture>
                                    </a>
                                </div>
                            <?php endif ?>
                            <div class="need_help">
                                <p class="add">
                                    <span class="address"><?= lang("address") ?></span>
                                    <?php if (!empty(@json_decode($settings->address, TRUE)[0])) : ?>
                                        <a rel="dofollow" title="<?= lang("address") ?>" href="<?= base_url(lang("routes_contact")) ?>"><i class="fa-solid fa-map-marker-alt"></i> <?= @json_decode($settings->address, TRUE)[0] ?></a>
                                    <?php endif ?>
                                </p>
                                <p class="phone"><span class="call us"><?=lang("email")?></span> <a href="mailto:1-800-345-6789"> Call: 1-800-345-6789</a></p>
                                <p class="phone"><span class="call us">Products & Sales</span> <a href="tel:1-800-345-6789"> Call: 1-800-345-6789</a></p>
                            </div>
                            <div class="footer-links mt-0 social-top">
                                <div class="follow d-flex align-items-center align-self-center align-content-center">
                                    <label><?= lang("social") ?></label>
                                    <ul class="d-flex link-follow align-items-center align-self-center align-content-center">
                                        <?php if (!empty($settings->facebook)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                                    <i class='fa fa-facebook color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->instagram)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                                    <i class='fa fa-instagram color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->linkedin)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                                    <i class='fa fa-linkedin color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->twitter)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                                    <i class='fa fa-twitter color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->youtube)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                                    <i class='fa fa-youtube color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->medium)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                                    <i class='fa fa-medium color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty($settings->pinterest)) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                                    <i class='fa fa-pinterest color'></i>
                                                </a>
                                            </li>
                                        <?php endif ?>
                                        <?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
                                            <li class="mb-0">
                                                <a rel="nofollow" target="_blank" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp"><i class="fa fa-whatsapp"></i></a>
                                            </li>
                                        <?php endif ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php if (!empty($footer_menus)) : ?>
                        <div class="col-md-3 col-lg-3 mb-md-30px mb-lm-30px">
                            <div class="single-wedge">
                                <h4 class="footer-herading"><?= lang("corporate") ?></h4>
                                <div class="footer-links">
                                    <?= $footer_menus ?>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                    <?php if (!empty($footer_product_categories)) : ?>
                        <div class="col-md-3 col-lg-3">
                            <div class="single-wedge">
                                <h4 class="footer-herading"><?= strto("lower|ucwords", lang("products")) ?></h4>
                                <div class="footer-links">
                                    <ul class="align-items-center">
                                        <?php foreach ($footer_product_categories as $key => $value) : ?>
                                            <li><a rel="dofollow" href="<?= base_url(lang("routes_products") . "/" . $value->seo_url) ?>" title="<?= $value->title ?>"><?= $value->title ?></a></li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                    <?php if (!empty($footer_menus2)) : ?>
                        <div class="col-lg-2 col-md-2">
                            <div class="single-wedge">
                                <h4 class="widget_title"><?= lang("menus") ?></h4>
                                <div class="footer-links">
                                    <?= $footer_menus2 ?>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <div class="footer-bottom row align-items-center align-content-center align-self-center">
            <div class="col-md-9 text-center">
                <p class="copy-text">© 2023 <a rel="dofollow" class="text-white" href="<?= base_url() ?>" title="<?= $settings->company_name ?>"><?= $settings->company_name ?></a> <?= lang("allRightsReserved") ?></p>
            </div>
            <div class="col-md-3">
                <a rel="nofollow" href="https://mutfakyapim.com" target="_blank" title="Mutfak Yapım Dijital Reklam Ajansı"><img loading="lazy" data-src="https://mutfakyapim.com/images/mutfak/logo.png" class="lazyload" height="40" width="176" alt="Mutfak Yapım Dijital Reklam Ajansı"></a>
            </div>
        </div>
    </div>
</div>
<!-- Footer Area End -->


<!--================= Wrapper End Here =================-->
<!--================= Footer Section End Here =================-->
<!-- Jquery -->
<script src="<?= asset_url("public/js/jquery.min.js") ?>"></script>
<script>
    jQuery.event.special.touchstart = {
        setup: function(_, ns, handle) {
            this.addEventListener("touchstart", handle, {
                passive: !ns.includes("noPreventDefault")
            });
        }
    };
    jQuery.event.special.touchmove = {
        setup: function(_, ns, handle) {
            this.addEventListener("touchmove", handle, {
                passive: !ns.includes("noPreventDefault")
            });
        }
    };
    jQuery.event.special.wheel = {
        setup: function(_, ns, handle) {
            this.addEventListener("wheel", handle, {
                passive: true
            });
        }
    };
    jQuery.event.special.mousewheel = {
        setup: function(_, ns, handle) {
            this.addEventListener("mousewheel", handle, {
                passive: true
            });
        }
    };
</script>
<!-- #Jquery -->
<!--FOOTER END-->
<?php if (!empty(@json_decode($settings->phone, TRUE)[0])) : ?>
    <a rel="dofollow" class="fixed-phone bg-danger" href="tel:<?= @json_decode($settings->phone, TRUE)[0] ?>" title="<?= lang("phone") ?>" data-bs-toggle="tooltip" data-bs-placement="top"><i class="fa fa-phone"></i></a>
<?php endif ?>
<?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
    <a rel="nofollow" target="_blank" class="fixed-whatsapp bg-success" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp" data-bs-toggle="tooltip" data-bs-placement="top"><i class="fa fa-whatsapp"></i></a>
<?php endif ?>
<!--layout end-->
<!-- SCRIPTS -->
<!-- Lazysizes -->
<script async defer src="<?= asset_url("public/js/lazysizes.min.js") ?>"></script>
<!-- #Lazysizes -->

<!-- iziToast -->
<script defer src="<?= asset_url("public/js/iziToast.min.js") ?>"></script>
<!-- #iziToast -->

<script defer src="<?= asset_url("public/js/lightgallery-all.min.js") ?>"></script>

<!-- Site Scripts -->
<script defer src="<?= asset_url("public/js/jquery-ui.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/jquery-migrate.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/bootstrap.bundle.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/modernizr-3.11.2.min.js") ?>"></script>

<script defer src="<?= asset_url("public/js/slick.js") ?>"></script>
<script defer src="<?= asset_url("public/js/countdown.js") ?>"></script>
<script defer src="<?= asset_url("public/js/scrollup.js") ?>"></script>
<script defer src="<?= asset_url("public/js/elevateZoom.js") ?>"></script>

<script async defer src="<?= asset_url("public/js/sweetalert.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/main.js") ?>"></script>
<script defer src="<?= asset_url("public/js/app.js") ?>"></script>
<!-- #Site Scripts -->

<!-- SCRIPTS -->
<?php $this->load->view("includes/alert") ?>
</body>

</html>