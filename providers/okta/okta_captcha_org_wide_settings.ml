(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_captcha_org_wide_settings = {
  captcha_id : string prop option; [@option]
  enabled_for : string prop list option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_captcha_org_wide_settings) -> ()

let yojson_of_okta_captcha_org_wide_settings =
  (function
   | {
       captcha_id = v_captcha_id;
       enabled_for = v_enabled_for;
       id = v_id;
     } ->
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
         match v_enabled_for with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_for", arg in
             bnd :: bnds
       in
       let bnds =
         match v_captcha_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "captcha_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_captcha_org_wide_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_captcha_org_wide_settings

[@@@deriving.end]

let okta_captcha_org_wide_settings ?captcha_id ?enabled_for ?id () :
    okta_captcha_org_wide_settings =
  { captcha_id; enabled_for; id }

type t = {
  tf_name : string;
  captcha_id : string prop;
  enabled_for : string list prop;
  id : string prop;
}

let make ?captcha_id ?enabled_for ?id __id =
  let __type = "okta_captcha_org_wide_settings" in
  let __attrs =
    ({
       tf_name = __id;
       captcha_id = Prop.computed __type __id "captcha_id";
       enabled_for = Prop.computed __type __id "enabled_for";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_captcha_org_wide_settings
        (okta_captcha_org_wide_settings ?captcha_id ?enabled_for ?id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?captcha_id ?enabled_for ?id __id =
  let (r : _ Tf_core.resource) =
    make ?captcha_id ?enabled_for ?id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
