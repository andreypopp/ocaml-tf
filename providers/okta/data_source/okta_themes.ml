(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type themes = {
  background_image_url : string prop;
  email_template_touch_point_variant : string prop;
  end_user_dashboard_touch_point_variant : string prop;
  error_page_touch_point_variant : string prop;
  favicon_url : string prop;
  id : string prop;
  links : string prop;
  logo_url : string prop;
  primary_color_contrast_hex : string prop;
  primary_color_hex : string prop;
  secondary_color_contrast_hex : string prop;
  secondary_color_hex : string prop;
  sign_in_page_touch_point_variant : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : themes) -> ()

let yojson_of_themes =
  (function
   | {
       background_image_url = v_background_image_url;
       email_template_touch_point_variant =
         v_email_template_touch_point_variant;
       end_user_dashboard_touch_point_variant =
         v_end_user_dashboard_touch_point_variant;
       error_page_touch_point_variant =
         v_error_page_touch_point_variant;
       favicon_url = v_favicon_url;
       id = v_id;
       links = v_links;
       logo_url = v_logo_url;
       primary_color_contrast_hex = v_primary_color_contrast_hex;
       primary_color_hex = v_primary_color_hex;
       secondary_color_contrast_hex = v_secondary_color_contrast_hex;
       secondary_color_hex = v_secondary_color_hex;
       sign_in_page_touch_point_variant =
         v_sign_in_page_touch_point_variant;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_sign_in_page_touch_point_variant
         in
         ("sign_in_page_touch_point_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_color_hex
         in
         ("secondary_color_hex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_secondary_color_contrast_hex
         in
         ("secondary_color_contrast_hex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_color_hex
         in
         ("primary_color_hex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_color_contrast_hex
         in
         ("primary_color_contrast_hex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logo_url in
         ("logo_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_links in
         ("links", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_favicon_url in
         ("favicon_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_error_page_touch_point_variant
         in
         ("error_page_touch_point_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_end_user_dashboard_touch_point_variant
         in
         ("end_user_dashboard_touch_point_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_email_template_touch_point_variant
         in
         ("email_template_touch_point_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_background_image_url
         in
         ("background_image_url", arg) :: bnds
       in
       `Assoc bnds
    : themes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_themes

[@@@deriving.end]

type okta_themes = {
  brand_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_themes) -> ()

let yojson_of_okta_themes =
  (function
   | { brand_id = v_brand_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_themes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_themes

[@@@deriving.end]

let okta_themes ?id ~brand_id () : okta_themes = { brand_id; id }

type t = {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  themes : themes list prop;
}

let make ?id ~brand_id __id =
  let __type = "okta_themes" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       id = Prop.computed __type __id "id";
       themes = Prop.computed __type __id "themes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_themes (okta_themes ?id ~brand_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand_id __id =
  let (r : _ Tf_core.resource) = make ?id ~brand_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
