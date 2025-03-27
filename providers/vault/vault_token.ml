(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_token = {
  display_name : string prop option; [@option]
  explicit_max_ttl : string prop option; [@option]
  id : string prop option; [@option]
  metadata : string prop Tf_core.assoc option; [@option]
  namespace : string prop option; [@option]
  no_default_policy : bool prop option; [@option]
  no_parent : bool prop option; [@option]
  num_uses : float prop option; [@option]
  period : string prop option; [@option]
  policies : string prop list option; [@option]
  renew_increment : float prop option; [@option]
  renew_min_lease : float prop option; [@option]
  renewable : bool prop option; [@option]
  role_name : string prop option; [@option]
  ttl : string prop option; [@option]
  wrapping_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_token) -> ()

let yojson_of_vault_token =
  (function
   | {
       display_name = v_display_name;
       explicit_max_ttl = v_explicit_max_ttl;
       id = v_id;
       metadata = v_metadata;
       namespace = v_namespace;
       no_default_policy = v_no_default_policy;
       no_parent = v_no_parent;
       num_uses = v_num_uses;
       period = v_period;
       policies = v_policies;
       renew_increment = v_renew_increment;
       renew_min_lease = v_renew_min_lease;
       renewable = v_renewable;
       role_name = v_role_name;
       ttl = v_ttl;
       wrapping_ttl = v_wrapping_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_wrapping_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "wrapping_ttl", arg in
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
       match v_role_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_renewable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "renewable", arg in
         bnd :: bnds
     in
     let bnds =
       match v_renew_min_lease with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "renew_min_lease", arg in
         bnd :: bnds
     in
     let bnds =
       match v_renew_increment with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "renew_increment", arg in
         bnd :: bnds
     in
     let bnds =
       match v_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_num_uses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "num_uses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_no_parent with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "no_parent", arg in
         bnd :: bnds
     in
     let bnds =
       match v_no_default_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "no_default_policy", arg in
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
       match v_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "metadata", arg in
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
       match v_explicit_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "explicit_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_display_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "display_name", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_token

[@@@deriving.end]

let vault_token ?display_name ?explicit_max_ttl ?id ?metadata ?namespace ?no_default_policy ?no_parent ?num_uses ?period
  ?policies ?renew_increment ?renew_min_lease ?renewable ?role_name ?ttl ?wrapping_ttl () =
  ({
     display_name;
     explicit_max_ttl;
     id;
     metadata;
     namespace;
     no_default_policy;
     no_parent;
     num_uses;
     period;
     policies;
     renew_increment;
     renew_min_lease;
     renewable;
     role_name;
     ttl;
     wrapping_ttl;
   }
    : vault_token)

type t = {
  tf_name : string;
  client_token : string prop;
  display_name : string prop;
  explicit_max_ttl : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_started : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  no_default_policy : bool prop;
  no_parent : bool prop;
  num_uses : float prop;
  period : string prop;
  policies : string list prop;
  renew_increment : float prop;
  renew_min_lease : float prop;
  renewable : bool prop;
  role_name : string prop;
  ttl : string prop;
  wrapped_token : string prop;
  wrapping_accessor : string prop;
  wrapping_ttl : string prop;
}

let make ?display_name ?explicit_max_ttl ?id ?metadata ?namespace ?no_default_policy ?no_parent ?num_uses ?period
  ?policies ?renew_increment ?renew_min_lease ?renewable ?role_name ?ttl ?wrapping_ttl __id =
  let __type = "vault_token" in
  let __attrs =
    ({
       tf_name = __id;
       client_token = Prop.computed __type __id "client_token";
       display_name = Prop.computed __type __id "display_name";
       explicit_max_ttl = Prop.computed __type __id "explicit_max_ttl";
       id = Prop.computed __type __id "id";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_started = Prop.computed __type __id "lease_started";
       metadata = Prop.computed __type __id "metadata";
       namespace = Prop.computed __type __id "namespace";
       no_default_policy = Prop.computed __type __id "no_default_policy";
       no_parent = Prop.computed __type __id "no_parent";
       num_uses = Prop.computed __type __id "num_uses";
       period = Prop.computed __type __id "period";
       policies = Prop.computed __type __id "policies";
       renew_increment = Prop.computed __type __id "renew_increment";
       renew_min_lease = Prop.computed __type __id "renew_min_lease";
       renewable = Prop.computed __type __id "renewable";
       role_name = Prop.computed __type __id "role_name";
       ttl = Prop.computed __type __id "ttl";
       wrapped_token = Prop.computed __type __id "wrapped_token";
       wrapping_accessor = Prop.computed __type __id "wrapping_accessor";
       wrapping_ttl = Prop.computed __type __id "wrapping_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_token
        (vault_token ?display_name ?explicit_max_ttl ?id ?metadata ?namespace ?no_default_policy ?no_parent ?num_uses
           ?period ?policies ?renew_increment ?renew_min_lease ?renewable ?role_name ?ttl ?wrapping_ttl ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?explicit_max_ttl ?id ?metadata ?namespace ?no_default_policy ?no_parent ?num_uses
  ?period ?policies ?renew_increment ?renew_min_lease ?renewable ?role_name ?ttl ?wrapping_ttl __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?explicit_max_ttl ?id ?metadata ?namespace ?no_default_policy ?no_parent ?num_uses ?period
      ?policies ?renew_increment ?renew_min_lease ?renewable ?role_name ?ttl ?wrapping_ttl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
