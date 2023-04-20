<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php $addressTitles = @json_decode($settings->address_title, TRUE); ?>
<?php $phones = @json_decode($settings->phone, TRUE); ?>
<?php $faxes = @json_decode($settings->fax, TRUE); ?>
<?php $addresses = @json_decode($settings->address, TRUE); ?>
<?php $whatsapps = @json_decode($settings->whatsapp, TRUE); ?>
<?php $maps = @json_decode($settings->map, TRUE); ?>






<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <ul class="nav">
                        <li><a rel="dofollow" href="<?= base_url(); ?>" title="<?= strto("lower|ucwords", lang("home")) ?>"><?= strto("lower|upper", lang("home")) ?></a></li>
                        <li><?= strto("lower|ucwords", lang("contact")) ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End-->

<!-- Blog Area Start -->
<div class="main-blog-area mb-60px">
    <div class="container">
        <div class="contact-map mb-4">
            <?= @htmlspecialchars_decode(@$maps[0]) ?>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2><?= lang("contactInformation") ?></h2>
                </div>
            </div>
        </div>
        <!-- Blog Slider Start -->
        <div class="main-blog-slider-wrapper slider-nav-style-1">
            <?php foreach ($addresses as $key => $value) : ?>
                <!-- Blog Slider Silgle Item -->
                <div class="blog-slider-item border rounded">
                    <div class="blog-slider-inner">
                        <div class="aritcles-content">
                            <div class="content-inner">
                                <h4 class="mb-3"><?= @$addressTitles[$key] ?></h4>
                                <ul class="flex-column d-flex">
                                    <?php if (!empty($value)) : ?>
                                        <li class="mb-3"><?= @$value ?></li>
                                    <?php endif ?>
                                    <?php if (!empty($phones[$key])) : ?>
                                        <li class="mb-3"><a href="tel:<?= @str_replace(" ", "", @$phones[$key]) ?>"><i class="fa fa-phone-volume"></i> <span><?= @$phones[$key] ?></span></a></li>
                                    <?php endif ?>
                                    <?php if (!empty($faxes[$key])) : ?>
                                        <li class="mb-3"><a href="tel:<?= @str_replace(" ", "", @$faxes[$key]) ?>"><i class="fa fa-fax"></i> <span><?= @$faxes[$key] ?></span></a></li>
                                    <?php endif ?>
                                    <?php if (!empty($whatsapps[$key])) : ?>
                                        <li class="mb-3"><a href="https://api.whatsapp.com/send?phone=<?= @str_replace(" ", "", @$whatsapps[$key]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>."><i class="fa fa-whatsapp"></i> <span><?= @$whatsapps[$key] ?></span></a></li>
                                    <?php endif ?>
                                    <li class="mb-3"><a href="mailto:<?= $settings->email ?>"><i class="fa fa-envelope-open"></i> <span><?= $settings->email ?></span></a></li>
                                    <?php if (!empty($maps[$key])) : ?>
                                        <li class="mb-3"><a href="<?= base_url() ?>" onclick="event.preventDefault();event.stopImmediatePropagation();$('.contact-map').html('<?= $maps[$key] ?>');$('html, body').animate({scrollTop: ($('.contact-map').offset().top - $('.header-upper').height())}, 'slow');"><i class="fa fa-map-marker"></i> <?= lang("viewOnMap") ?></a></li>
                                    <?php endif ?>
                                </ul>
                                <hr class="my-0">
                                <ul class="d-flex align-items-center my-3 py-auto align-self-center justify-content-center justify-content-md-start">
                                    <?php if (!empty($settings->linkedin)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                                <i class='fa fa-linkedin color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->instagram)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                                <i class='fa fa-instagram color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->facebook)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                                <i class='fa fa-facebook color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->twitter)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                                <i class='fa fa-twitter color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->youtube)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                                <i class='fa fa-youtube color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->medium)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                                <i class='fa fa-medium color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->pinterest)) : ?>
                                        <li class="mx-2 align-items-center my-auto py-auto align-self-center">
                                            <a rel="dofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                                <i class='fa fa-pinterest color fa-2x'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Blog Slider Silgle Item -->
            <?php endforeach ?>

        </div>
        <!-- Blog Slider End -->
    </div>
</div>
<!-- Blog Area End -->


<!-- contact area start -->
<div class="contact-area mb-60px">
    <div class="container">
        <div class="custom-row-2">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="contact-form">
                    <div class="contact-title mb-30">
                        <h2><?= lang("contactForm") ?></h2>
                    </div>
                    <form onsubmit="return false" enctype="multipart/form-data" method="POST" id="contact-form" class="contact-form-style">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="full_name"><?= lang("namesurname") ?></label>
                                    <input type="text" name="full_name" id="full_name" placeholder="<?= lang("namesurname") ?>" required minlength="2" maxlength="70">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email"><?= lang("emailaddress") ?></label>
                                    <input type="email" name="email" id="email" placeholder="<?= lang("emailaddress") ?>" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone"><?= lang("phonenumber") ?></label>
                                    <input type="text" name="phone" id="phone" placeholder="<?= lang("phonenumber") ?>" required minlength="11" maxlength="19">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone"><?= lang("subject") ?></label>
                                    <input type="text" name="subject" id="subject" placeholder="<?= lang("subject") ?>" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="message"><?= lang("message") ?></label>
                                    <textarea name="comment" id="comment" cols="30" rows="8" placeholder="<?= lang("message") ?>" required></textarea>
                                    <div class="form-btn">
                                        <button class="btnSubmitForm" aria-label="<?= $settings->company_name ?>" type="submit" data-url="<?= base_url(lang("routes_contact-form")) ?>"><span><i class="fa fa-arrow-right"></i><?= lang("submit") ?></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- contact area end -->