(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_security_policy_setting = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : content_security_policy_setting) -> ()

let yojson_of_content_security_policy_setting =
  (yojson_of_unit
    : content_security_policy_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_security_policy_setting

[@@@deriving.end]

type widget_customizations = unit [@@deriving_inline yojson_of]

let _ = fun (_ : widget_customizations) -> ()

let yojson_of_widget_customizations =
  (yojson_of_unit
    : widget_customizations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_widget_customizations

[@@@deriving.end]

type okta_default_signin_page = {
  brand_id : string prop;
  content_security_policy_setting : content_security_policy_setting;
  widget_customizations : widget_customizations;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_default_signin_page) -> ()

let yojson_of_okta_default_signin_page =
  (function
   | {
       brand_id = v_brand_id;
       content_security_policy_setting =
         v_content_security_policy_setting;
       widget_customizations = v_widget_customizations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_widget_customizations v_widget_customizations
         in
         ("widget_customizations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_content_security_policy_setting
             v_content_security_policy_setting
         in
         ("content_security_policy_setting", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_default_signin_page -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_default_signin_page

[@@@deriving.end]

let content_security_policy_setting () = ()
let widget_customizations () = ()

let okta_default_signin_page ~brand_id
    ~content_security_policy_setting ~widget_customizations () :
    okta_default_signin_page =
  {
    brand_id;
    content_security_policy_setting;
    widget_customizations;
  }

type t = {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  page_content : string prop;
  widget_version : string prop;
}

let make ~brand_id ~content_security_policy_setting
    ~widget_customizations __id =
  let __type = "okta_default_signin_page" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       id = Prop.computed __type __id "id";
       page_content = Prop.computed __type __id "page_content";
       widget_version = Prop.computed __type __id "widget_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_default_signin_page
        (okta_default_signin_page ~brand_id
           ~content_security_policy_setting ~widget_customizations ());
    attrs = __attrs;
  }

let register ?tf_module ~brand_id ~content_security_policy_setting
    ~widget_customizations __id =
  let (r : _ Tf_core.resource) =
    make ~brand_id ~content_security_policy_setting
      ~widget_customizations __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
