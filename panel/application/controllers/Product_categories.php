<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Product_categories extends MY_Controller
{
    public $viewFolder = "";
    public function __construct()
    {
        parent::__construct();
        $this->viewFolder = "product_categories_v";
        $this->load->model("product_category_model");
        $this->load->model("products_w_categories_model");
        $this->load->model("product_image_model");
        $this->load->model("product_model");
        if (!get_active_user()) :
            redirect(base_url("login"));
        endif;
    }
    public function index()
    {
        $viewData = new stdClass();
        $items = $this->product_category_model->get_all(["lang" => $this->session->userdata('activeLang')]);
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "list";
        $viewData->items = $items;
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
    }
    public function datatable()
    {
        $items = $this->product_category_model->getRows(["product_categories.lang" => $this->session->userdata('activeLang')], $_POST);
        $data = [];
        $i = (!empty($_POST['start']) ? $_POST['start'] : 0);
        if (!empty($items)) :
            foreach ($items as $item) :
                $i++;
                $proccessing = '
            <div class="dropdown">
                <button class="btn btn-sm btn-outline-primary rounded-0 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    İşlemler
                </button>
                <div class="dropdown-menu rounded-0 dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item updateProductCategoryBtn" href="javascript:void(0)" data-url="' . base_url("product_categories/update_form/$item->category_id") . '"><i class="fa fa-pen mr-2"></i>Kaydı Düzenle</a>
                    <a class="dropdown-item remove-btn" href="javascript:void(0)" data-table="productCategoryTable" data-url="' . base_url("product_categories/delete/$item->category_id") . '"><i class="fa fa-trash mr-2"></i>Kaydı Sil</a>
                </div>
            </div>';
                $checkbox = '<div class="custom-control custom-switch"><input data-id="' . $item->category_id . '" data-url="' . base_url("product_categories/isActiveSetter/{$item->category_id}") . '" data-status="' . ($item->isActive == 1 ? "checked" : null) . '" id="customSwitch' . $i . '" type="checkbox" ' . ($item->isActive == 1 ? "checked" : null) . ' class="my-check custom-control-input" >  <label class="custom-control-label" for="customSwitch' . $i . '"></label></div>';
                $data[] = [$item->rank, '<i class="fa fa-arrows" data-id="' . $item->category_id . '"></i>', $item->category_id, $item->title, (!empty($item->product_category) ? $item->product_category : "<strong class='text-danger'>Ana Kategori</strong>"), $item->lang, $checkbox, turkishDate("d F Y, l H:i:s", $item->createdAt), turkishDate("d F Y, l H:i:s", $item->updatedAt), $proccessing];
            endforeach;
        endif;
        $output = [
            "draw" => (!empty($_POST['draw']) ? $_POST['draw'] : 0),
            "recordsTotal" => $this->product_category_model->rowCount(["product_categories.lang" => $this->session->userdata('activeLang')]),
            "recordsFiltered" => $this->product_category_model->countFiltered(["product_categories.lang" => $this->session->userdata('activeLang')], (!empty($_POST) ? $_POST : [])),
            "data" => $data,
        ];
        // Output to JSON format
        echo json_encode($output);
    }
    public function new_form()
    {
        $viewData = new stdClass();
        $viewData->categories = $this->product_category_model->get_all(["lang" => $this->session->userdata('activeLang')]);
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "add";
        $viewData->settings = $this->general_model->get_all("settings", null, null, ["isActive" => 1]);
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/content", $viewData);
    }
    public function save()
    {
        $data = rClean($this->input->post());
        if (checkEmpty($data)["error"] && checkEmpty($data)["key"] != "top_id") :
            $key = checkEmpty($data)["key"];
            echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Kaydı Yapılırken Hata Oluştu. \"{$key}\" Bilgisini Doldurduğunuzdan Emin Olup Tekrar Deneyin."]);
        else :
            $getRank = $this->product_category_model->rowCount(["lang" => $this->session->userdata('activeLang')]);
            if (!empty($_FILES)) :
                if (!empty($_FILES["img_url"]["name"])) :
                    $image = upload_picture("img_url", "uploads/$this->viewFolder", [], "*");
                    if ($image["success"]) :
                        $data["img_url"] = $image["file_name"];
                    else :
                        echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Kaydı Yapılırken Hata Oluştu. Ürün Kategorisi Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                        die();
                    endif;
                endif;
                if (!empty($_FILES["home_url"]["name"])) :
                    $image = upload_picture("home_url", "uploads/$this->viewFolder", [], "*");
                    if ($image["success"]) :
                        $data["home_url"] = $image["file_name"];
                    else :
                        echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Kaydı Yapılırken Hata Oluştu. Ürün Kategorisi Anasayfa Yatay Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                        die();
                    endif;
                endif;
                if (!empty($_FILES["banner_url"]["name"])) :
                    $image = upload_picture("banner_url", "uploads/$this->viewFolder", [], "*");
                    if ($image["success"]) :
                        $data["banner_url"] = $image["file_name"];
                    else :
                        echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Kaydı Yapılırken Hata Oluştu. Ürün Kategorisi Banner Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                        die();
                    endif;
                endif;
            endif;
            $data["seo_url"] = seo($data["title"]);
            $data["top_id"] = !empty($data["top_id"]) ? $data["top_id"] : 0;
            $data["isActive"] = 1;
            $data["rank"] = $getRank + 1;
            $insert = $this->product_category_model->add($data);
            if ($insert) :
                echo json_encode(["success" => true, "title" => "Başarılı!", "message" => "Ürün Kategorisi Başarıyla Eklendi."]);
            else :
                echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Eklenirken Hata Oluştu, Lütfen Tekrar Deneyin."]);
            endif;
        endif;
    }
    public function update_form($id)
    {
        $viewData = new stdClass();
        $viewData->item = $this->product_category_model->get(["id" => $id]);
        $category = $this->product_category_model->get_all(["id!=" => $viewData->item->id,"lang" => $this->session->userdata('activeLang')]);
        $viewData->categories = $category;
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "update";
        $viewData->settings = $this->general_model->get_all("settings", null, null, ["isActive" => 1]);
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/content", $viewData);
    }
    public function update($id)
    {
        $data = rClean($this->input->post());
        if (checkEmpty($data)["error"] && checkEmpty($data)["key"] != "top_id" && checkEmpty($data)["key"] != "img_url" && checkEmpty($data)["key"] != "home_url" && checkEmpty($data)["key"] != "banner_url") :
            $key = checkEmpty($data)["key"];
            echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Güncelleştirilirken Hata Oluştu. \"{$key}\" Bilgisini Doldurduğunuzdan Emin Olup Tekrar Deneyin."]);
        else :
            $product_category = $this->product_category_model->get(["id" => $id]);
            if (!empty($product_category->img_url)) :
                $data["img_url"] = $product_category->img_url;
            endif;
            if (!empty($_FILES["img_url"]["name"])) :
                $image = upload_picture("img_url", "uploads/$this->viewFolder", [], "*");
                if ($image["success"]) :
                    $data["img_url"] = $image["file_name"];
                    if (!empty($product_category->img_url)) :
                        if (!is_dir(FCPATH . "uploads/{$this->viewFolder}/{$product_category->img_url}") && file_exists(FCPATH . "uploads/{$this->viewFolder}/{$product_category->img_url}")) :
                            unlink(FCPATH . "uploads/{$this->viewFolder}/{$product_category->img_url}");
                        endif;
                    endif;
                else :
                    echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Güncelleştirilirken Hata Oluştu. Ürün Kategorisi Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                    die();
                endif;
            endif;
            if (!empty($product_category->home_url)) :
                $data["home_url"] = $product_category->home_url;
            endif;
            if (!empty($_FILES["home_url"]["name"])) :
                $image = upload_picture("home_url", "uploads/$this->viewFolder", [], "*");
                if ($image["success"]) :
                    $data["home_url"] = $image["file_name"];
                    if (!empty($product_category->home_url)) :
                        if (!is_dir(FCPATH . "uploads/{$this->viewFolder}/{$product_category->home_url}") && file_exists(FCPATH . "uploads/{$this->viewFolder}/{$product_category->home_url}")) :
                            unlink(FCPATH . "uploads/{$this->viewFolder}/{$product_category->home_url}");
                        endif;
                    endif;
                else :
                    echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Güncelleştirilirken Hata Oluştu. Ürün Kategorisi Anasayfa Yatay Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                    die();
                endif;
            endif;
            if (!empty($product_category->banner_url)) :
                $data["banner_url"] = $product_category->banner_url;
            endif;
            if (!empty($_FILES["banner_url"]["name"])) :
                $image = upload_picture("banner_url", "uploads/$this->viewFolder", [], "*");
                if ($image["success"]) :
                    $data["banner_url"] = $image["file_name"];
                    if (!empty($product_category->banner_url)) :
                        if (!is_dir(FCPATH . "uploads/{$this->viewFolder}/{$product_category->banner_url}") && file_exists(FCPATH . "uploads/{$this->viewFolder}/{$product_category->banner_url}")) :
                            unlink(FCPATH . "uploads/{$this->viewFolder}/{$product_category->banner_url}");
                        endif;
                    endif;
                else :
                    echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Güncelleştirilirken Hata Oluştu. Ürün Kategorisi Banner Görseli Seçtiğinizden Emin Olup Tekrar Deneyin."]);
                    die();
                endif;
            endif;
            $data["top_id"] = !empty($data["top_id"]) ? $data["top_id"] : 0;
            $data["seo_url"] = seo($data["title"]);
            $update = $this->product_category_model->update(["id" => $id], $data);
            if ($update) :
                echo json_encode(["success" => true, "title" => "Başarılı!", "message" => "Ürün Kategorisi Başarıyla Güncelleştirildi."]);
            else :
                echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Güncelleştirilirken Hata Oluştu, Lütfen Tekrar Deneyin."]);
            endif;
        endif;
    }
    public function delete($id)
    {
        $product_category = $this->product_category_model->get(["id" => $id]);
        if (!empty($product_category)) :
            $delete = $this->product_category_model->delete(["id"    => $id]);
            if ($delete) :
                /**
                 * Remove Category Image
                 */
                $url = FCPATH . "uploads/{$this->viewFolder}/{$product_category->img_url}";
                if (!is_dir($url) && file_exists($url)) :
                    unlink($url);
                endif;
                $url = FCPATH . "uploads/{$this->viewFolder}/{$product_category->home_url}";
                if (!is_dir($url) && file_exists($url)) :
                    unlink($url);
                endif;
                $url = FCPATH . "uploads/{$this->viewFolder}/{$product_category->banner_url}";
                if (!is_dir($url) && file_exists($url)) :
                    unlink($url);
                endif;
                /**
                 * Remove Category From Product
                 */
                $this->products_w_categories_model->delete(["category_id" => $id]);
                echo json_encode(["success" => true, "title" => "Başarılı!", "message" => "Ürün Kategorisi Başarıyla Silindi."]);
            else :
                echo json_encode(["success" => false, "title" => "Başarısız!", "message" => "Ürün Kategorisi Silinirken Hata Oluştu, Lütfen Tekrar Deneyin."]);
            endif;
        endif;
    }
    public function rankSetter()
    {
        $rows = $this->input->post("rows");
        if (!empty($rows)) :
            foreach ($rows as $row) :
                $this->product_category_model->update(
                    [
                        "id" => $row["id"]
                    ],
                    ["rank" => $row["position"]]
                );
            endforeach;
        endif;
    }
    public function isActiveSetter($id)
    {
        if (!empty($id)) :
            $isActive = (intval($this->input->post("data")) === 1) ? 1 : 0;
            if ($this->product_category_model->update(["id" => $id], ["isActive" => $isActive])) :
                echo json_encode(["success" => True, "title" => "İşlem Başarıyla Gerçekleşti", "msg" => "Güncelleme İşlemi Yapıldı"]);
            else :
                echo json_encode(["success" => False, "title" => "İşlem Başarısız Oldu", "msg" => "Güncelleme İşlemi Yapılamadı"]);
            endif;
        endif;
    }
}
