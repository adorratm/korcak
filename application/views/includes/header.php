<!-- Header Section Start From Here -->
<header class="header-wrapper">
    <!-- Header Top Nav Start -->
    <div class="header-nav bg-black d-none d-md-block">
        <div class="container">
            <div class="header-nav-wrapper d-md-flex d-sm-flex d-xl-flex d-lg-flex justify-content-between">
                <div class="header-static-nav d-flex">
                    <div class="social-top">
                        <div class="follow d-flex">
                            <label><?= lang("social") ?>:</label>
                            <ul class="link-follow">
                                <?php if (!empty($settings->facebook)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                            <i aria-hidden="true" class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->twitter)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                            <i aria-hidden="true" class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->instagram)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                            <i aria-hidden="true" class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->linkedin)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                            <i aria-hidden="true" class="fa fa-linkedin"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->youtube)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                            <i aria-hidden="true" class="fa fa-youtube"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->medium)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                            <i aria-hidden="true" class="fa fa-medium"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->pinterest)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                            <i aria-hidden="true" class="fa fa-pinterest"></i>
                                        </a>
                                    </li>
                                <?php endif ?>

                                <?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
                                    <li>
                                        <a rel="nofollow" target="_blank" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp"><i class="fa fa-whatsapp"></i></a>
                                    </li>
                                <?php endif ?>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="header-menu-nav">
                    <ul class="menu-nav">
                        <li class="pr-0">
                            <?php if (!empty($languages)) : ?>
                                <div class="dropdown">
                                    <button title="<?= $settings->company_name ?>" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <img width="16" height="11" data-src="<?= asset_url("public/images/flags/" . strto("lower", $lang) . ".webp") ?>" class="lazyload img-fluid" loading="lazy"> <?= strto("lower|upper", $lang) ?>
                                    </button>
                                    <ul class="dropdown-menu animation slideDownIn dropdown-menu-right">
                                        <?php foreach ($languages as $key => $value) : ?>
                                            <li><a rel="dofollow" href="<?= asset_url("home/" . lang("routes_change-language") . "?lang=" . $value) ?>" class="<?= ($value === $lang ? "active" : null) ?>"><img width="16" height="11" data-src="<?= asset_url("public/images/flags/" . strto("lower", $value) . ".webp") ?>" class="lazyload img-fluid" loading="lazy"> <span><?= strto("lower|upper", $value) ?></span></a></li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            <?php endif ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Top Nav End -->
    <!-- Mobile Top Header Nav Start -->
    <div class="header-nav header-nav-mobile bg-black d-md-none">
        <div class="container">
            <div class="header-nav-wrapper ">
                <div class="header-menu-nav d-flex justify-content-between">
                    <div class="social-top align-self-center">
                        <div class="follow d-flex">
                            <label><?= lang("social") ?>:</label>
                            <ul class="link-follow">
                                <?php if (!empty($settings->facebook)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                            <i aria-hidden="true" class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->twitter)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                            <i aria-hidden="true" class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->instagram)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                            <i aria-hidden="true" class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->linkedin)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                            <i aria-hidden="true" class="fa fa-linkedin"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->youtube)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                            <i aria-hidden="true" class="fa fa-youtube"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->medium)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                            <i aria-hidden="true" class="fa fa-medium"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty($settings->pinterest)) : ?>
                                    <li>
                                        <a rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                            <i aria-hidden="true" class="fa fa-pinterest"></i>
                                        </a>
                                    </li>
                                <?php endif ?>
                                <?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
                                    <li>
                                        <a rel="nofollow" target="_blank" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp"><i class="fa fa-whatsapp"></i></a>
                                    </li>
                                <?php endif ?>
                            </ul>
                        </div>
                    </div>
                    <div class="mobile-menu-nav">
                        <ul class="menu-nav">
                            <li class="pr-0">
                                <?php if (!empty($languages)) : ?>
                                    <div class="dropdown">
                                        <button title="<?= $settings->company_name ?>" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img width="16" height="11" data-src="<?= asset_url("public/images/flags/" . strto("lower", $lang) . ".webp") ?>" class="lazyload img-fluid" loading="lazy"> <?= strto("lower|upper", $lang) ?>
                                        </button>
                                        <ul class="dropdown-menu animation slideDownIn dropdown-menu-right">
                                            <?php foreach ($languages as $key => $value) : ?>
                                                <li><a rel="dofollow" href="<?= asset_url("home/" . lang("routes_change-language") . "?lang=" . $value) ?>" class="<?= ($value === $lang ? "active" : null) ?>"><img width="16" height="11" data-src="<?= asset_url("public/images/flags/" . strto("lower", $value) . ".webp") ?>" class="lazyload img-fluid" loading="lazy"> <span><?= strto("lower|upper", $value) ?></span></a></li>
                                            <?php endforeach ?>
                                        </ul>
                                    </div>
                                <?php endif ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Top Header Nav End -->

    <!-- Header Nav Start -->
    <div class="header-top bg-white sticky-nav ptb-20px d-lg-block d-none">
        <div class="container">
            <div class="row">
                <div class="col-md-3 d-flex">
                    <div class="logo align-self-center">
                        <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                            <picture>
                                <img loading="lazy" width="200" height="106" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                            </picture>
                        </a>
                    </div>
                </div>
                <div class="col-md-9 align-self-center header-menu-3">
                    <div class="header-right-element d-flex justify-content-between">
                        <div class="header-horizontal-menu">
                            <?= $menus ?>
                        </div>
                        <!--Cart info Start -->
                        <div class="header-tools d-flex align-self-center align-items-center align-self-center align-content-center">
                            <div class="cart-info d-flex align-self-center align-items-center align-self-center align-content-center">
                                <?php if (!empty(@json_decode($settings->phone, TRUE)[0])) : ?>
                                    <a class="d-flex align-self-center align-items-center align-self-center align-content-center" rel="dofollow" href="tel:<?= @json_decode($settings->phone, TRUE)[0] ?>" title="<?= lang("phone") ?>"><i class="fa fa-phone-volume"></i> <?= @json_decode($settings->phone, TRUE)[0] ?></a>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>
                    <!--Cart info End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Header Nav End -->
</header>
<!-- Header Section End Here -->

<!-- Mobile Header Section Start -->
<div class="mobile-header d-lg-none sticky-nav white-bg ptb-20px">
    <div class="container">
        <div class="row align-items-center">

            <!-- Header Logo Start -->
            <div class="col d-flex">
                <div class="mobile-menu-toggle home-2">
                    <a href="#offcanvas-mobile-menu" class="offcanvas-toggle">
                        <svg viewBox="0 0 800 600">
                            <path d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200" id="top"></path>
                            <path d="M300,320 L540,320" id="middle"></path>
                            <path d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190" id="bottom" transform="translate(480, 320) scale(1, -1) translate(-480, -318) ">
                            </path>
                        </svg>
                    </a>
                </div>
                <div class="header-logo mt-7px">
                    <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                        <picture>
                            <img loading="lazy" width="200" height="106" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                        </picture>
                    </a>
                </div>
            </div>
            <!-- Header Logo End -->

        </div>
    </div>
</div>

<!-- OffCanvas Search Start -->
<div id="offcanvas-mobile-menu" class="offcanvas offcanvas-mobile-menu">
    <div class="inner customScroll">
        <div class="head">
            <span class="title">
                <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                    <picture>
                        <img loading="lazy" width="200" height="106" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                    </picture>
                </a>
            </span>
            <button class="offcanvas-close">×</button>
        </div>
        <div class="offcanvas-menu">
            <?= $menus ?>
        </div>
        <!-- OffCanvas Menu End -->
        <div class="offcanvas-social mt-30px">
            <ul>
                <?php if (!empty($settings->facebook)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                            <i aria-hidden="true" class="fa fa-facebook"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->twitter)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                            <i aria-hidden="true" class="fa fa-twitter"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->instagram)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                            <i aria-hidden="true" class="fa fa-instagram"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->linkedin)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                            <i aria-hidden="true" class="fa fa-linkedin"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->youtube)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                            <i aria-hidden="true" class="fa fa-youtube"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->medium)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                            <i aria-hidden="true" class="fa fa-medium"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty($settings->pinterest)) : ?>
                    <li>
                        <a rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                            <i aria-hidden="true" class="fa fa-pinterest"></i>
                        </a>
                    </li>
                <?php endif ?>
                <?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
                    <li>
                        <a rel="nofollow" target="_blank" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp"><i class="fa fa-whatsapp"></i></a>
                    </li>
                <?php endif ?>
            </ul>
        </div>
    </div>
</div>
<!-- OffCanvas Search End -->
<div class="offcanvas-overlay"></div>