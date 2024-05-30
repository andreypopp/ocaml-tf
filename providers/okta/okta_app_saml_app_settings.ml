(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_saml_app_settings = {
  app_id : string prop;
  id : string prop option; [@option]
  settings : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_saml_app_settings) -> ()

let yojson_of_okta_app_saml_app_settings =
  (function
   | { app_id = v_app_id; id = v_id; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_settings in
         ("settings", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_saml_app_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_saml_app_settings

[@@@deriving.end]

let okta_app_saml_app_settings ?id ~app_id ~settings () :
    okta_app_saml_app_settings =
  { app_id; id; settings }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  settings : string prop;
}

let make ?id ~app_id ~settings __id =
  let __type = "okta_app_saml_app_settings" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       settings = Prop.computed __type __id "settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_saml_app_settings
        (okta_app_saml_app_settings ?id ~app_id ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id ~settings __id =
  let (r : _ Tf_core.resource) = make ?id ~app_id ~settings __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
