(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_oidc = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_oidc) -> ()

let yojson_of_okta_idp_oidc =
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
    : okta_idp_oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_oidc

[@@@deriving.end]

let okta_idp_oidc ?id ?name () : okta_idp_oidc = { id; name }

type t = {
  tf_name : string;
  authorization_binding : string prop;
  authorization_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  issuer_mode : string prop;
  issuer_url : string prop;
  jwks_binding : string prop;
  jwks_url : string prop;
  max_clock_skew : float prop;
  name : string prop;
  protocol_type : string prop;
  scopes : string list prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  user_info_binding : string prop;
  user_info_url : string prop;
}

let make ?id ?name __id =
  let __type = "okta_idp_oidc" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_binding =
         Prop.computed __type __id "authorization_binding";
       authorization_url =
         Prop.computed __type __id "authorization_url";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       issuer_url = Prop.computed __type __id "issuer_url";
       jwks_binding = Prop.computed __type __id "jwks_binding";
       jwks_url = Prop.computed __type __id "jwks_url";
       max_clock_skew = Prop.computed __type __id "max_clock_skew";
       name = Prop.computed __type __id "name";
       protocol_type = Prop.computed __type __id "protocol_type";
       scopes = Prop.computed __type __id "scopes";
       token_binding = Prop.computed __type __id "token_binding";
       token_url = Prop.computed __type __id "token_url";
       type_ = Prop.computed __type __id "type";
       user_info_binding =
         Prop.computed __type __id "user_info_binding";
       user_info_url = Prop.computed __type __id "user_info_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_idp_oidc (okta_idp_oidc ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
