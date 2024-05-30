(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_metadata_saml = {
  id : string prop option; [@option]
  idp_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_metadata_saml) -> ()

let yojson_of_okta_idp_metadata_saml =
  (function
   | { id = v_id; idp_id = v_idp_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_idp_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_id", arg in
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
       `Assoc bnds
    : okta_idp_metadata_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_metadata_saml

[@@@deriving.end]

let okta_idp_metadata_saml ?id ?idp_id () : okta_idp_metadata_saml =
  { id; idp_id }

type t = {
  tf_name : string;
  assertions_signed : bool prop;
  authn_request_signed : bool prop;
  encryption_certificate : string prop;
  entity_id : string prop;
  http_post_binding : string prop;
  http_redirect_binding : string prop;
  id : string prop;
  idp_id : string prop;
  metadata : string prop;
  signing_certificate : string prop;
}

let make ?id ?idp_id __id =
  let __type = "okta_idp_metadata_saml" in
  let __attrs =
    ({
       tf_name = __id;
       assertions_signed =
         Prop.computed __type __id "assertions_signed";
       authn_request_signed =
         Prop.computed __type __id "authn_request_signed";
       encryption_certificate =
         Prop.computed __type __id "encryption_certificate";
       entity_id = Prop.computed __type __id "entity_id";
       http_post_binding =
         Prop.computed __type __id "http_post_binding";
       http_redirect_binding =
         Prop.computed __type __id "http_redirect_binding";
       id = Prop.computed __type __id "id";
       idp_id = Prop.computed __type __id "idp_id";
       metadata = Prop.computed __type __id "metadata";
       signing_certificate =
         Prop.computed __type __id "signing_certificate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_idp_metadata_saml
        (okta_idp_metadata_saml ?id ?idp_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?idp_id __id =
  let (r : _ Tf_core.resource) = make ?id ?idp_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
