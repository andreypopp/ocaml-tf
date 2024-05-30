(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_metadata_saml = {
  app_id : string prop;
  id : string prop option; [@option]
  key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_metadata_saml) -> ()

let yojson_of_okta_app_metadata_saml =
  (function
   | { app_id = v_app_id; id = v_id; key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
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
    : okta_app_metadata_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_metadata_saml

[@@@deriving.end]

let okta_app_metadata_saml ?id ?key_id ~app_id () :
    okta_app_metadata_saml =
  { app_id; id; key_id }

type t = {
  tf_name : string;
  app_id : string prop;
  certificate : string prop;
  entity_id : string prop;
  http_post_binding : string prop;
  http_redirect_binding : string prop;
  id : string prop;
  key_id : string prop;
  metadata : string prop;
  want_authn_requests_signed : bool prop;
}

let make ?id ?key_id ~app_id __id =
  let __type = "okta_app_metadata_saml" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       certificate = Prop.computed __type __id "certificate";
       entity_id = Prop.computed __type __id "entity_id";
       http_post_binding =
         Prop.computed __type __id "http_post_binding";
       http_redirect_binding =
         Prop.computed __type __id "http_redirect_binding";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       metadata = Prop.computed __type __id "metadata";
       want_authn_requests_signed =
         Prop.computed __type __id "want_authn_requests_signed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_metadata_saml
        (okta_app_metadata_saml ?id ?key_id ~app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_id ~app_id __id =
  let (r : _ Tf_core.resource) = make ?id ?key_id ~app_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
