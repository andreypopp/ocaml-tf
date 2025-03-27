(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tune = {
  allowed_response_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  audit_non_hmac_request_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  audit_non_hmac_response_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  default_lease_ttl : string prop;
  listing_visibility : string prop;
  max_lease_ttl : string prop;
  passthrough_request_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  token_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tune) -> ()

let yojson_of_tune =
  (function
   | {
       allowed_response_headers = v_allowed_response_headers;
       audit_non_hmac_request_keys = v_audit_non_hmac_request_keys;
       audit_non_hmac_response_keys = v_audit_non_hmac_response_keys;
       default_lease_ttl = v_default_lease_ttl;
       listing_visibility = v_listing_visibility;
       max_lease_ttl = v_max_lease_ttl;
       passthrough_request_headers = v_passthrough_request_headers;
       token_type = v_token_type;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_token_type in
       ("token_type", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_passthrough_request_headers then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_passthrough_request_headers in
         let bnd = "passthrough_request_headers", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_max_lease_ttl in
       ("max_lease_ttl", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_listing_visibility in
       ("listing_visibility", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_default_lease_ttl in
       ("default_lease_ttl", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_audit_non_hmac_response_keys then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_audit_non_hmac_response_keys in
         let bnd = "audit_non_hmac_response_keys", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_audit_non_hmac_request_keys then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_audit_non_hmac_request_keys in
         let bnd = "audit_non_hmac_request_keys", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_allowed_response_headers then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_allowed_response_headers in
         let bnd = "allowed_response_headers", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : tune -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tune

[@@@deriving.end]

type vault_jwt_auth_backend = {
  bound_issuer : string prop option; [@option]
  default_role : string prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  jwks_ca_pem : string prop option; [@option]
  jwks_url : string prop option; [@option]
  jwt_supported_algs : string prop list option; [@option]
  jwt_validation_pubkeys : string prop list option; [@option]
  local : bool prop option; [@option]
  namespace : string prop option; [@option]
  namespace_in_state : bool prop option; [@option]
  oidc_client_id : string prop option; [@option]
  oidc_client_secret : string prop option; [@option]
  oidc_discovery_ca_pem : string prop option; [@option]
  oidc_discovery_url : string prop option; [@option]
  oidc_response_mode : string prop option; [@option]
  oidc_response_types : string prop list option; [@option]
  path : string prop option; [@option]
  provider_config : string prop Tf_core.assoc option; [@option]
  tune : tune list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_jwt_auth_backend) -> ()

let yojson_of_vault_jwt_auth_backend =
  (function
   | {
       bound_issuer = v_bound_issuer;
       default_role = v_default_role;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       jwks_ca_pem = v_jwks_ca_pem;
       jwks_url = v_jwks_url;
       jwt_supported_algs = v_jwt_supported_algs;
       jwt_validation_pubkeys = v_jwt_validation_pubkeys;
       local = v_local;
       namespace = v_namespace;
       namespace_in_state = v_namespace_in_state;
       oidc_client_id = v_oidc_client_id;
       oidc_client_secret = v_oidc_client_secret;
       oidc_discovery_ca_pem = v_oidc_discovery_ca_pem;
       oidc_discovery_url = v_oidc_discovery_url;
       oidc_response_mode = v_oidc_response_mode;
       oidc_response_types = v_oidc_response_types;
       path = v_path;
       provider_config = v_provider_config;
       tune = v_tune;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tune with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list yojson_of_tune v in
         let bnd = "tune", arg in
         bnd :: bnds
     in
     let bnds =
       match v_provider_config with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "provider_config", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_response_types with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "oidc_response_types", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_response_mode with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oidc_response_mode", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_discovery_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oidc_discovery_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_discovery_ca_pem with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oidc_discovery_ca_pem", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_client_secret with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oidc_client_secret", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oidc_client_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oidc_client_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace_in_state with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "namespace_in_state", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwt_validation_pubkeys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "jwt_validation_pubkeys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwt_supported_algs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "jwt_supported_algs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwks_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "jwks_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwks_ca_pem with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "jwks_ca_pem", arg in
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
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_role", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_issuer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bound_issuer", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_jwt_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_jwt_auth_backend

[@@@deriving.end]

let vault_jwt_auth_backend ?bound_issuer ?default_role ?description ?disable_remount ?id ?jwks_ca_pem ?jwks_url
  ?jwt_supported_algs ?jwt_validation_pubkeys ?local ?namespace ?namespace_in_state ?oidc_client_id ?oidc_client_secret
  ?oidc_discovery_ca_pem ?oidc_discovery_url ?oidc_response_mode ?oidc_response_types ?path ?provider_config ?tune
  ?type_ () =
  ({
     bound_issuer;
     default_role;
     description;
     disable_remount;
     id;
     jwks_ca_pem;
     jwks_url;
     jwt_supported_algs;
     jwt_validation_pubkeys;
     local;
     namespace;
     namespace_in_state;
     oidc_client_id;
     oidc_client_secret;
     oidc_discovery_ca_pem;
     oidc_discovery_url;
     oidc_response_mode;
     oidc_response_types;
     path;
     provider_config;
     tune;
     type_;
   }
    : vault_jwt_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  bound_issuer : string prop;
  default_role : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  jwks_ca_pem : string prop;
  jwks_url : string prop;
  jwt_supported_algs : string list prop;
  jwt_validation_pubkeys : string list prop;
  local : bool prop;
  namespace : string prop;
  namespace_in_state : bool prop;
  oidc_client_id : string prop;
  oidc_client_secret : string prop;
  oidc_discovery_ca_pem : string prop;
  oidc_discovery_url : string prop;
  oidc_response_mode : string prop;
  oidc_response_types : string list prop;
  path : string prop;
  provider_config : string Tf_core.assoc prop;
  tune : tune list prop;
  type_ : string prop;
}

let make ?bound_issuer ?default_role ?description ?disable_remount ?id ?jwks_ca_pem ?jwks_url ?jwt_supported_algs
  ?jwt_validation_pubkeys ?local ?namespace ?namespace_in_state ?oidc_client_id ?oidc_client_secret
  ?oidc_discovery_ca_pem ?oidc_discovery_url ?oidc_response_mode ?oidc_response_types ?path ?provider_config ?tune
  ?type_ __id =
  let __type = "vault_jwt_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       bound_issuer = Prop.computed __type __id "bound_issuer";
       default_role = Prop.computed __type __id "default_role";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       jwks_ca_pem = Prop.computed __type __id "jwks_ca_pem";
       jwks_url = Prop.computed __type __id "jwks_url";
       jwt_supported_algs = Prop.computed __type __id "jwt_supported_algs";
       jwt_validation_pubkeys = Prop.computed __type __id "jwt_validation_pubkeys";
       local = Prop.computed __type __id "local";
       namespace = Prop.computed __type __id "namespace";
       namespace_in_state = Prop.computed __type __id "namespace_in_state";
       oidc_client_id = Prop.computed __type __id "oidc_client_id";
       oidc_client_secret = Prop.computed __type __id "oidc_client_secret";
       oidc_discovery_ca_pem = Prop.computed __type __id "oidc_discovery_ca_pem";
       oidc_discovery_url = Prop.computed __type __id "oidc_discovery_url";
       oidc_response_mode = Prop.computed __type __id "oidc_response_mode";
       oidc_response_types = Prop.computed __type __id "oidc_response_types";
       path = Prop.computed __type __id "path";
       provider_config = Prop.computed __type __id "provider_config";
       tune = Prop.computed __type __id "tune";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_jwt_auth_backend
        (vault_jwt_auth_backend ?bound_issuer ?default_role ?description ?disable_remount ?id ?jwks_ca_pem ?jwks_url
           ?jwt_supported_algs ?jwt_validation_pubkeys ?local ?namespace ?namespace_in_state ?oidc_client_id
           ?oidc_client_secret ?oidc_discovery_ca_pem ?oidc_discovery_url ?oidc_response_mode ?oidc_response_types ?path
           ?provider_config ?tune ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?bound_issuer ?default_role ?description ?disable_remount ?id ?jwks_ca_pem ?jwks_url
  ?jwt_supported_algs ?jwt_validation_pubkeys ?local ?namespace ?namespace_in_state ?oidc_client_id ?oidc_client_secret
  ?oidc_discovery_ca_pem ?oidc_discovery_url ?oidc_response_mode ?oidc_response_types ?path ?provider_config ?tune
  ?type_ __id =
  let (r : _ Tf_core.resource) =
    make ?bound_issuer ?default_role ?description ?disable_remount ?id ?jwks_ca_pem ?jwks_url ?jwt_supported_algs
      ?jwt_validation_pubkeys ?local ?namespace ?namespace_in_state ?oidc_client_id ?oidc_client_secret
      ?oidc_discovery_ca_pem ?oidc_discovery_url ?oidc_response_mode ?oidc_response_types ?path ?provider_config ?tune
      ?type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
