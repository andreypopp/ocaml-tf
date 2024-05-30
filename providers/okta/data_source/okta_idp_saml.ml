(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_saml = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_saml) -> ()

let yojson_of_okta_idp_saml =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : okta_idp_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_saml

[@@@deriving.end]

let okta_idp_saml ?id ?name () : okta_idp_saml = { id; name }

type t = {
  tf_name : string;
  acs_binding : string prop;
  acs_type : string prop;
  audience : string prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  name : string prop;
  sso_binding : string prop;
  sso_destination : string prop;
  sso_url : string prop;
  subject_filter : string prop;
  subject_format : string list prop;
  type_ : string prop;
}

let make ?id ?name __id =
  let __type = "okta_idp_saml" in
  let __attrs =
    ({
       tf_name = __id;
       acs_binding = Prop.computed __type __id "acs_binding";
       acs_type = Prop.computed __type __id "acs_type";
       audience = Prop.computed __type __id "audience";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       kid = Prop.computed __type __id "kid";
       name = Prop.computed __type __id "name";
       sso_binding = Prop.computed __type __id "sso_binding";
       sso_destination = Prop.computed __type __id "sso_destination";
       sso_url = Prop.computed __type __id "sso_url";
       subject_filter = Prop.computed __type __id "subject_filter";
       subject_format = Prop.computed __type __id "subject_format";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_idp_saml (okta_idp_saml ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
