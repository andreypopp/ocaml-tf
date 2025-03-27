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

type vault_github_auth_backend = {
  base_url : string prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  organization : string prop;
  organization_id : float prop option; [@option]
  path : string prop option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
  tune : tune list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_github_auth_backend) -> ()

let yojson_of_vault_github_auth_backend =
  (function
   | {
       base_url = v_base_url;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       namespace = v_namespace;
       organization = v_organization;
       organization_id = v_organization_id;
       path = v_path;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
       tune = v_tune;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_tune with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list yojson_of_tune v in
         let bnd = "tune", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_num_uses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_num_uses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_no_default_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "token_no_default_policy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_explicit_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_explicit_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_bound_cidrs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_bound_cidrs", arg in
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
       match v_organization_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "organization_id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_organization in
       ("organization", arg) :: bnds
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
       match v_base_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "base_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_github_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_github_auth_backend

[@@@deriving.end]

let vault_github_auth_backend ?base_url ?description ?disable_remount ?id ?namespace ?organization_id ?path
  ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period
  ?token_policies ?token_ttl ?token_type ?tune ~organization () =
  ({
     base_url;
     description;
     disable_remount;
     id;
     namespace;
     organization;
     organization_id;
     path;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
     tune;
   }
    : vault_github_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  base_url : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  namespace : string prop;
  organization : string prop;
  organization_id : float prop;
  path : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  tune : tune list prop;
}

let make ?base_url ?description ?disable_remount ?id ?namespace ?organization_id ?path ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ?tune ~organization __id =
  let __type = "vault_github_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       base_url = Prop.computed __type __id "base_url";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       organization = Prop.computed __type __id "organization";
       organization_id = Prop.computed __type __id "organization_id";
       path = Prop.computed __type __id "path";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
       tune = Prop.computed __type __id "tune";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_github_auth_backend
        (vault_github_auth_backend ?base_url ?description ?disable_remount ?id ?namespace ?organization_id ?path
           ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
           ?token_period ?token_policies ?token_ttl ?token_type ?tune ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?base_url ?description ?disable_remount ?id ?namespace ?organization_id ?path ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ?tune ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?base_url ?description ?disable_remount ?id ?namespace ?organization_id ?path ?token_bound_cidrs
      ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
      ?token_ttl ?token_type ?tune ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
