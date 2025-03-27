(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_mount = {
  allowed_managed_keys : string prop list option; [@option]
  allowed_response_headers : string prop list option; [@option]
  audit_non_hmac_request_keys : string prop list option; [@option]
  audit_non_hmac_response_keys : string prop list option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  delegated_auth_accessors : string prop list option; [@option]
  description : string prop option; [@option]
  external_entropy_access : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  listing_visibility : string prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc option; [@option]
  passthrough_request_headers : string prop list option; [@option]
  path : string prop;
  plugin_version : string prop option; [@option]
  seal_wrap : bool prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_mount) -> ()

let yojson_of_vault_mount =
  (function
   | {
       allowed_managed_keys = v_allowed_managed_keys;
       allowed_response_headers = v_allowed_response_headers;
       audit_non_hmac_request_keys = v_audit_non_hmac_request_keys;
       audit_non_hmac_response_keys = v_audit_non_hmac_response_keys;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       delegated_auth_accessors = v_delegated_auth_accessors;
       description = v_description;
       external_entropy_access = v_external_entropy_access;
       id = v_id;
       identity_token_key = v_identity_token_key;
       listing_visibility = v_listing_visibility;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       options = v_options;
       passthrough_request_headers = v_passthrough_request_headers;
       path = v_path;
       plugin_version = v_plugin_version;
       seal_wrap = v_seal_wrap;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
     let bnds =
       match v_seal_wrap with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "seal_wrap", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_version", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_passthrough_request_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "passthrough_request_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "options", arg in
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
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
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
       match v_listing_visibility with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "listing_visibility", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_key", arg in
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
       match v_external_entropy_access with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_entropy_access", arg in
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
       match v_delegated_auth_accessors with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "delegated_auth_accessors", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_audit_non_hmac_response_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_response_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_audit_non_hmac_request_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_request_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_response_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_response_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_managed_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_managed_keys", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_mount

[@@@deriving.end]

let vault_mount ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
  ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options
  ?passthrough_request_headers ?plugin_version ?seal_wrap ~path ~type_ () =
  ({
     allowed_managed_keys;
     allowed_response_headers;
     audit_non_hmac_request_keys;
     audit_non_hmac_response_keys;
     default_lease_ttl_seconds;
     delegated_auth_accessors;
     description;
     external_entropy_access;
     id;
     identity_token_key;
     listing_visibility;
     local;
     max_lease_ttl_seconds;
     namespace;
     options;
     passthrough_request_headers;
     path;
     plugin_version;
     seal_wrap;
     type_;
   }
    : vault_mount)

type t = {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  path : string prop;
  plugin_version : string prop;
  seal_wrap : bool prop;
  type_ : string prop;
}

let make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
  ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?external_entropy_access ?id ?identity_token_key
  ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers ?plugin_version
  ?seal_wrap ~path ~type_ __id =
  let __type = "vault_mount" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       allowed_managed_keys = Prop.computed __type __id "allowed_managed_keys";
       allowed_response_headers = Prop.computed __type __id "allowed_response_headers";
       audit_non_hmac_request_keys = Prop.computed __type __id "audit_non_hmac_request_keys";
       audit_non_hmac_response_keys = Prop.computed __type __id "audit_non_hmac_response_keys";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       delegated_auth_accessors = Prop.computed __type __id "delegated_auth_accessors";
       description = Prop.computed __type __id "description";
       external_entropy_access = Prop.computed __type __id "external_entropy_access";
       id = Prop.computed __type __id "id";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       listing_visibility = Prop.computed __type __id "listing_visibility";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       passthrough_request_headers = Prop.computed __type __id "passthrough_request_headers";
       path = Prop.computed __type __id "path";
       plugin_version = Prop.computed __type __id "plugin_version";
       seal_wrap = Prop.computed __type __id "seal_wrap";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_mount
        (vault_mount ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
           ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
           ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace
           ?options ?passthrough_request_headers ?plugin_version ?seal_wrap ~path ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
  ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options
  ?passthrough_request_headers ?plugin_version ?seal_wrap ~path ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
      ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?external_entropy_access ?id ?identity_token_key
      ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers ?plugin_version
      ?seal_wrap ~path ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
