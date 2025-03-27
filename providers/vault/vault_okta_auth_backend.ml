(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group = {
  group_name : string prop;
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group) -> ()

let yojson_of_group =
  (function
   | { group_name = v_group_name; policies = v_policies } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_policies then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_policies in
         let bnd = "policies", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_group_name in
       ("group_name", arg) :: bnds
     in
     `Assoc bnds
    : group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group

[@@@deriving.end]

type user = {
  groups : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | { groups = v_groups; policies = v_policies; username = v_username } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_policies then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_policies in
         let bnd = "policies", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_groups then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_groups in
         let bnd = "groups", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type vault_okta_auth_backend = {
  base_url : string prop option; [@option]
  bypass_okta_mfa : bool prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  group : group list option; [@option]
  id : string prop option; [@option]
  max_ttl : string prop option; [@option]
  namespace : string prop option; [@option]
  organization : string prop;
  path : string prop option; [@option]
  token : string prop option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
  ttl : string prop option; [@option]
  user : user list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_okta_auth_backend) -> ()

let yojson_of_vault_okta_auth_backend =
  (function
   | {
       base_url = v_base_url;
       bypass_okta_mfa = v_bypass_okta_mfa;
       description = v_description;
       disable_remount = v_disable_remount;
       group = v_group;
       id = v_id;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
       organization = v_organization;
       path = v_path;
       token = v_token;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
       ttl = v_ttl;
       user = v_user;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_user with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list yojson_of_user v in
         let bnd = "user", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
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
       match v_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token", arg in
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
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_ttl", arg in
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
       match v_group with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list yojson_of_group v in
         let bnd = "group", arg in
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
       match v_bypass_okta_mfa with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "bypass_okta_mfa", arg in
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
    : vault_okta_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_okta_auth_backend

[@@@deriving.end]

let vault_okta_auth_backend ?base_url ?bypass_okta_mfa ?description ?disable_remount ?group ?id ?max_ttl ?namespace
  ?path ?token ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
  ?token_period ?token_policies ?token_ttl ?token_type ?ttl ?user ~organization () =
  ({
     base_url;
     bypass_okta_mfa;
     description;
     disable_remount;
     group;
     id;
     max_ttl;
     namespace;
     organization;
     path;
     token;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
     ttl;
     user;
   }
    : vault_okta_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  base_url : string prop;
  bypass_okta_mfa : bool prop;
  description : string prop;
  disable_remount : bool prop;
  group : group list prop;
  id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  organization : string prop;
  path : string prop;
  token : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  ttl : string prop;
  user : user list prop;
}

let make ?base_url ?bypass_okta_mfa ?description ?disable_remount ?group ?id ?max_ttl ?namespace ?path ?token
  ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period
  ?token_policies ?token_ttl ?token_type ?ttl ?user ~organization __id =
  let __type = "vault_okta_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       base_url = Prop.computed __type __id "base_url";
       bypass_okta_mfa = Prop.computed __type __id "bypass_okta_mfa";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
       organization = Prop.computed __type __id "organization";
       path = Prop.computed __type __id "path";
       token = Prop.computed __type __id "token";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
       ttl = Prop.computed __type __id "ttl";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_okta_auth_backend
        (vault_okta_auth_backend ?base_url ?bypass_okta_mfa ?description ?disable_remount ?group ?id ?max_ttl ?namespace
           ?path ?token ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy
           ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?ttl ?user ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?base_url ?bypass_okta_mfa ?description ?disable_remount ?group ?id ?max_ttl ?namespace ?path
  ?token ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
  ?token_period ?token_policies ?token_ttl ?token_type ?ttl ?user ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?base_url ?bypass_okta_mfa ?description ?disable_remount ?group ?id ?max_ttl ?namespace ?path ?token
      ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period
      ?token_policies ?token_ttl ?token_type ?ttl ?user ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
