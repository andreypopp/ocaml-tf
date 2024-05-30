(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_theme = { brand_id : string prop; theme_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_theme) -> ()

let yojson_of_okta_theme =
  (function
   | { brand_id = v_brand_id; theme_id = v_theme_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_theme_id in
         ("theme_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_theme -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_theme

[@@@deriving.end]

let okta_theme ~brand_id ~theme_id () : okta_theme =
  { brand_id; theme_id }

type t = {
  tf_name : string;
  background_image_url : string prop;
  brand_id : string prop;
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
  theme_id : string prop;
}

let make ~brand_id ~theme_id __id =
  let __type = "okta_theme" in
  let __attrs =
    ({
       tf_name = __id;
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
       favicon_url = Prop.computed __type __id "favicon_url";
       id = Prop.computed __type __id "id";
       links = Prop.computed __type __id "links";
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
    json = yojson_of_okta_theme (okta_theme ~brand_id ~theme_id ());
    attrs = __attrs;
  }

let register ?tf_module ~brand_id ~theme_id __id =
  let (r : _ Tf_core.resource) = make ~brand_id ~theme_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
