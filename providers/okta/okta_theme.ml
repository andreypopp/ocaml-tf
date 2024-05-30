(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_theme = {
  background_image : string prop option; [@option]
  brand_id : string prop;
  email_template_touch_point_variant : string prop option; [@option]
  end_user_dashboard_touch_point_variant : string prop option;
      [@option]
  error_page_touch_point_variant : string prop option; [@option]
  favicon : string prop option; [@option]
  logo : string prop option; [@option]
  primary_color_contrast_hex : string prop option; [@option]
  primary_color_hex : string prop option; [@option]
  secondary_color_contrast_hex : string prop option; [@option]
  secondary_color_hex : string prop option; [@option]
  sign_in_page_touch_point_variant : string prop option; [@option]
  theme_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_theme) -> ()

let yojson_of_okta_theme =
  (function
   | {
       background_image = v_background_image;
       brand_id = v_brand_id;
       email_template_touch_point_variant =
         v_email_template_touch_point_variant;
       end_user_dashboard_touch_point_variant =
         v_end_user_dashboard_touch_point_variant;
       error_page_touch_point_variant =
         v_error_page_touch_point_variant;
       favicon = v_favicon;
       logo = v_logo;
       primary_color_contrast_hex = v_primary_color_contrast_hex;
       primary_color_hex = v_primary_color_hex;
       secondary_color_contrast_hex = v_secondary_color_contrast_hex;
       secondary_color_hex = v_secondary_color_hex;
       sign_in_page_touch_point_variant =
         v_sign_in_page_touch_point_variant;
       theme_id = v_theme_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_theme_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "theme_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sign_in_page_touch_point_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sign_in_page_touch_point_variant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_color_hex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_color_hex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_color_contrast_hex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_color_contrast_hex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_color_hex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_color_hex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_color_contrast_hex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_color_contrast_hex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_favicon with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "favicon", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_page_touch_point_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_page_touch_point_variant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_user_dashboard_touch_point_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "end_user_dashboard_touch_point_variant", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_email_template_touch_point_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_template_touch_point_variant", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       let bnds =
         match v_background_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "background_image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_theme -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_theme

[@@@deriving.end]

let okta_theme ?background_image ?email_template_touch_point_variant
    ?end_user_dashboard_touch_point_variant
    ?error_page_touch_point_variant ?favicon ?logo
    ?primary_color_contrast_hex ?primary_color_hex
    ?secondary_color_contrast_hex ?secondary_color_hex
    ?sign_in_page_touch_point_variant ?theme_id ~brand_id () :
    okta_theme =
  {
    background_image;
    brand_id;
    email_template_touch_point_variant;
    end_user_dashboard_touch_point_variant;
    error_page_touch_point_variant;
    favicon;
    logo;
    primary_color_contrast_hex;
    primary_color_hex;
    secondary_color_contrast_hex;
    secondary_color_hex;
    sign_in_page_touch_point_variant;
    theme_id;
  }

type t = {
  tf_name : string;
  background_image : string prop;
  background_image_url : string prop;
  brand_id : string prop;
  email_template_touch_point_variant : string prop;
  end_user_dashboard_touch_point_variant : string prop;
  error_page_touch_point_variant : string prop;
  favicon : string prop;
  favicon_url : string prop;
  id : string prop;
  links : string prop;
  logo : string prop;
  logo_url : string prop;
  primary_color_contrast_hex : string prop;
  primary_color_hex : string prop;
  secondary_color_contrast_hex : string prop;
  secondary_color_hex : string prop;
  sign_in_page_touch_point_variant : string prop;
  theme_id : string prop;
}

let make ?background_image ?email_template_touch_point_variant
    ?end_user_dashboard_touch_point_variant
    ?error_page_touch_point_variant ?favicon ?logo
    ?primary_color_contrast_hex ?primary_color_hex
    ?secondary_color_contrast_hex ?secondary_color_hex
    ?sign_in_page_touch_point_variant ?theme_id ~brand_id __id =
  let __type = "okta_theme" in
  let __attrs =
    ({
       tf_name = __id;
       background_image =
         Prop.computed __type __id "background_image";
       background_image_url =
         Prop.computed __type __id "background_image_url";
       brand_id = Prop.computed __type __id "brand_id";
       email_template_touch_point_variant =
         Prop.computed __type __id
           "email_template_touch_point_variant";
       end_user_dashboard_touch_point_variant =
         Prop.computed __type __id
           "end_user_dashboard_touch_point_variant";
       error_page_touch_point_variant =
         Prop.computed __type __id "error_page_touch_point_variant";
       favicon = Prop.computed __type __id "favicon";
       favicon_url = Prop.computed __type __id "favicon_url";
       id = Prop.computed __type __id "id";
       links = Prop.computed __type __id "links";
       logo = Prop.computed __type __id "logo";
       logo_url = Prop.computed __type __id "logo_url";
       primary_color_contrast_hex =
         Prop.computed __type __id "primary_color_contrast_hex";
       primary_color_hex =
         Prop.computed __type __id "primary_color_hex";
       secondary_color_contrast_hex =
         Prop.computed __type __id "secondary_color_contrast_hex";
       secondary_color_hex =
         Prop.computed __type __id "secondary_color_hex";
       sign_in_page_touch_point_variant =
         Prop.computed __type __id "sign_in_page_touch_point_variant";
       theme_id = Prop.computed __type __id "theme_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_theme
        (okta_theme ?background_image
           ?email_template_touch_point_variant
           ?end_user_dashboard_touch_point_variant
           ?error_page_touch_point_variant ?favicon ?logo
           ?primary_color_contrast_hex ?primary_color_hex
           ?secondary_color_contrast_hex ?secondary_color_hex
           ?sign_in_page_touch_point_variant ?theme_id ~brand_id ());
    attrs = __attrs;
  }

let register ?tf_module ?background_image
    ?email_template_touch_point_variant
    ?end_user_dashboard_touch_point_variant
    ?error_page_touch_point_variant ?favicon ?logo
    ?primary_color_contrast_hex ?primary_color_hex
    ?secondary_color_contrast_hex ?secondary_color_hex
    ?sign_in_page_touch_point_variant ?theme_id ~brand_id __id =
  let (r : _ Tf_core.resource) =
    make ?background_image ?email_template_touch_point_variant
      ?end_user_dashboard_touch_point_variant
      ?error_page_touch_point_variant ?favicon ?logo
      ?primary_color_contrast_hex ?primary_color_hex
      ?secondary_color_contrast_hex ?secondary_color_hex
      ?sign_in_page_touch_point_variant ?theme_id ~brand_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
