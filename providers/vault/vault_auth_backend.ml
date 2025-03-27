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

type vault_auth_backend = {
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  local : bool prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  tune : tune list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_auth_backend) -> ()

let yojson_of_vault_auth_backend =
  (function
   | {
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       identity_token_key = v_identity_token_key;
       local = v_local;
       namespace = v_namespace;
       path = v_path;
       tune = v_tune;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
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
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
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
     `Assoc bnds
    : vault_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_auth_backend

[@@@deriving.end]

let vault_auth_backend ?description ?disable_remount ?id ?identity_token_key ?local ?namespace ?path ?tune ~type_ () =
  ({ description; disable_remount; id; identity_token_key; local; namespace; path; tune; type_ } : vault_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_key : string prop;
  local : bool prop;
  namespace : string prop;
  path : string prop;
  tune : tune list prop;
  type_ : string prop;
}

let make ?description ?disable_remount ?id ?identity_token_key ?local ?namespace ?path ?tune ~type_ __id =
  let __type = "vault_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       local = Prop.computed __type __id "local";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       tune = Prop.computed __type __id "tune";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_auth_backend
        (vault_auth_backend ?description ?disable_remount ?id ?identity_token_key ?local ?namespace ?path ?tune ~type_
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disable_remount ?id ?identity_token_key ?local ?namespace ?path ?tune ~type_ __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?disable_remount ?id ?identity_token_key ?local ?namespace ?path ?tune ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
