<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!doctype html>
<html lang="<?= $lang ?>">

<head>
    <!-- Title -->
    <title><?= (!empty($meta_title) ? stripslashes($meta_title) : (!empty($og_title) ? stripslashes($og_title) : stripslashes($settings->company_name))) ?></title>
    <!-- Title -->

    <!-- Meta Data -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, user-scalable=yes, shrink-to-fit=no,minimal-ui">
    <meta name="description" content="<?= clean(@$meta_desc) ?>">
    <?php /*
    <meta name="keywords" content="<?= clean(@$meta_keyw) ?>">
	*/ ?>
    <meta name="subject" content="<?= clean(@$meta_desc) ?>">
    <meta name="copyright" content="<?= $settings->company_name ?>">
    <meta name="language" content="<?= strto("lower|upper", $lang) ?>">
    <meta name="robots" content="all" />
    <meta name="revised" content="<?= turkishDate("d F Y, l H:i:s", date("Y-m-d H:i:s")) ?>" />
    <meta name="abstract" content="<?= clean(@$meta_desc) ?>">
    <meta name="topic" content="<?= clean(@$meta_desc) ?>">
    <meta name="summary" content="<?= clean(@$meta_desc) ?>">
    <meta name="Classification" content="Business">
    <meta name="author" content="Mutfak Yapım Dijital Reklam Ajansı, info@mutfakyapim.com">
    <meta name="designer" content="Mutfak Yapım Dijital Reklam Ajansı, info@mutfakyapim.com">
    <meta name="copyright" content="Mutfak Yapım Dijital Reklam Ajansı, info@mutfakyapim.com 2023 &copy; Tüm Hakları Saklıdır.">
    <meta name="reply-to" content="<?= $settings->email ?>">
    <meta name="owner" content="Mutfak Yapım Dijital Reklam Ajansı, info@mutfakyapim.com">
    <meta name="url" content="<?= clean(base_url()) ?>">
    <meta name="identifier-URL" content="<?= clean(base_url()) ?>">
    <meta name="directory" content="submission">
    <meta name="category" content="Article">
    <meta name="coverage" content="Worldwide">
    <meta name="distribution" content="Global">
    <meta name="rating" content="General">
    <meta name="revisit-after" content="1 days">
    <meta property="og:image:secure" content="<?= clean(@$og_image) ?>">
    <meta property="og:locale" content="<?= strto("lower", $lang) . '_' . strto("lower|upper", $lang) ?>">
    <meta property="og:url" content="<?= (!empty($og_url) ? clean($og_url) : clean(base_url())) ?>" />
    <meta property="og:type" content="<?= (!empty($og_type) ? clean($og_type) : "website") ?>" />
    <meta property="og:title" content="<?= (!empty($meta_title) ? stripslashes($meta_title) : (!empty($og_title) ? stripslashes($og_title) : stripslashes($settings->company_name))) ?>" />
    <meta property="og:description" content="<?= (!empty($og_description) ? clean($og_description) : clean(@$meta_desc)) ?>" />
    <meta property="og:image" content="<?= clean(@$og_image) ?>" />
    <meta property="og:image:secure_url" content="<?= clean(@$og_image) ?>" />
    <meta name="twitter:title" content="<?= (!empty($meta_title) ? stripslashes($meta_title) : (!empty($og_title) ? stripslashes($og_title) : stripslashes($settings->company_name))) ?>">
    <meta name="twitter:description" content="<?= (!empty($og_description) ? clean($og_description) : clean(@$meta_desc)) ?>">
    <meta name="twitter:image" content="<?= clean(@$og_image) ?>">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:site_name" content="<?= (!empty($meta_title) ? stripslashes($meta_title) : (!empty($og_title) ? stripslashes($og_title) : stripslashes($settings->company_name))) ?>">
    <meta name="twitter:image:alt" content="<?= (!empty($meta_title) ? stripslashes($meta_title) : (!empty($og_title) ? stripslashes($og_title) : stripslashes($settings->company_name))) ?>">
    <meta name="googlebot" content="archive,follow,imageindex,index,odp,snippet,translate">
    <meta name="publisher" content="Mutfak Yapım Dijital Reklam Ajansı, info@mutfakyapim.com" />
    <link rel="canonical" href="<?= (!empty($og_url) ? clean($og_url) : clean(base_url())) ?>" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link rel="preconnect" href="<?= base_url() ?>">
    <link rel="dns-prefetch" href="<?= base_url() ?>">
    <!-- Favicon -->
    <link rel="shortcut icon" sizes="32x32" href="<?= get_picture("settings_v", $settings->favicon); ?>" type="<?= @image_type_to_mime_type(@exif_imagetype(get_picture("settings_v", $settings->favicon))) ?>">
    <link rel="icon" sizes="32x32" href="<?= get_picture("settings_v", $settings->favicon); ?>" type="<?= @image_type_to_mime_type(@exif_imagetype(get_picture("settings_v", $settings->favicon))) ?>">
    <link rel="apple-touch-icon" sizes="32x32" href="<?= get_picture("settings_v", $settings->favicon); ?>" type="<?= @image_type_to_mime_type(@exif_imagetype(get_picture("settings_v", $settings->favicon))) ?>">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <!-- META TAGS -->

    <!-- === STYLES === -->
    <!-- iziToast -->
    <link type="text/css" href="<?= asset_url("public/css/iziToast.min.css") ?>" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" />
    <!-- #iziToast -->
    <link type="text/css" href="<?= asset_url("public/css/jquery-ui.css") ?>" rel="stylesheet">
    <link type="text/css" href="<?= asset_url("public/css/bootstrap.min.css") ?>" rel="stylesheet">
    <link type="text/css" href="<?= asset_url("public/css/animate.css") ?>" rel="stylesheet">
    <link type="text/css" href="<?= asset_url("public/css/slick.css") ?>" rel="stylesheet">
    <link type="text/css" href="<?= asset_url("public/css/style.css") ?>" rel="stylesheet">
    <link type="text/css" href="<?= asset_url("public/css/all.min.css") ?>" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link type="text/css" href="<?= asset_url("public/css/v4-shims.min.css") ?>" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link type="text/css" href="<?= asset_url("public/css/lightgallery.min.css") ?>" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <style>
        .fixed-phone {
            position: fixed;
            bottom: 135px;
            right: 16px;
            border: 2px solid #fff;
            cursor: pointer;
            border-radius: 50%;
            z-index: 9;
            -webkit-box-shadow: -4px 1px 7px 0 rgb(84 84 84 / 35%);
            box-shadow: -1px 1px 5px 0 rgb(84 84 84 / 35%)
        }

        .fixed-instagram {
            position: fixed;
            bottom: 135px;
            right: 16px;
            border: 2px solid #fff;
            cursor: pointer;
            border-radius: 50%;
            z-index: 9;
            -webkit-box-shadow: -4px 1px 7px 0 rgb(84 84 84 / 35%);
            box-shadow: -1px 1px 5px 0 rgb(84 84 84 / 35%)
        }

        .fixed-whatsapp {
            position: fixed;
            bottom: 80px;
            right: 16px;
            border: 2px solid #fff;
            cursor: pointer;
            border-radius: 50%;
            z-index: 9;
            -webkit-box-shadow: -4px 1px 7px 0 rgba(84, 84, 84, .35);
            box-shadow: -1px 1px 5px 0 rgba(84, 84, 84, .35)
        }

        .fixed-maps i,
        .fixed-phone i,
        .fixed-phone2 i,
        .fixed-whatsapp i,
        .fixed-whatsapp2 i,
        .fixed-instagram i {
            height: 42px;
            width: 42px;
            line-height: 42px;
            font-size: 20px;
            margin: 2px;
            color: #fff;
            text-align: center;
            border-radius: 50%
        }

        .fixed-maps:hover i,
        .fixed-phone2:hover i,
        .fixed-phone:hover i,
        .fixed-whatsapp2:hover i,
        .fixed-whatsapp:hover i,
        .fixed-instagram:hover i {
            animation: shake 1s cubic-bezier(.36, .07, .19, .97) both;
            transform: translate3d(0, 0, 0);
            backface-visibility: hidden;
            perspective: 1000px;
            color: #fff
        }

        .fixed-maps {
            position: fixed;
            bottom: 190px;
            right: 16px;
            border: 2px solid #fff;
            cursor: pointer;
            border-radius: 50%;
            z-index: 9;
            -webkit-box-shadow: -4px 1px 7px 0 rgb(84 84 84 / 35%);
            box-shadow: -1px 1px 5px 0 rgb(84 84 84 / 35%)
        }

        .single-product-thumbb.active {
            border-color: #e10018 !important;
        }
        .carousel-indicators{
            justify-content: start;
        }
        .carousel-indicators [data-bs-target]{
            width: unset;
            height: unset;
            text-indent: unset;
        }
    </style>



    <!-- SCRIPTS -->
    <?= $settings->analytics ?>
    <?= $settings->metrica ?>
    <?= $settings->live_support ?>
    <script>
        let base_url = "<?= asset_url() ?>";
        let menu = [];
    </script>

</head>

<body>