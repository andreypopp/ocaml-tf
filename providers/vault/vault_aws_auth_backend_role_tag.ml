(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_role_tag = {
  allow_instance_migration : bool prop option; [@option]
  backend : string prop option; [@option]
  disallow_reauthentication : bool prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop option; [@option]
  max_ttl : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_role_tag) -> ()

let yojson_of_vault_aws_auth_backend_role_tag =
  (function
   | {
       allow_instance_migration = v_allow_instance_migration;
       backend = v_backend;
       disallow_reauthentication = v_disallow_reauthentication;
       id = v_id;
       instance_id = v_instance_id;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
       policies = v_policies;
       role = v_role;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_instance_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "instance_id", arg in
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
       match v_disallow_reauthentication with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disallow_reauthentication", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_instance_migration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_instance_migration", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_role_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_role_tag

[@@@deriving.end]

let vault_aws_auth_backend_role_tag ?allow_instance_migration ?backend ?disallow_reauthentication ?id ?instance_id
  ?max_ttl ?namespace ?policies ~role () =
  ({ allow_instance_migration; backend; disallow_reauthentication; id; instance_id; max_ttl; namespace; policies; role }
    : vault_aws_auth_backend_role_tag)

type t = {
  tf_name : string;
  allow_instance_migration : bool prop;
  backend : string prop;
  disallow_reauthentication : bool prop;
  id : string prop;
  instance_id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  policies : string list prop;
  role : string prop;
  tag_key : string prop;
  tag_value : string prop;
}

let make ?allow_instance_migration ?backend ?disallow_reauthentication ?id ?instance_id ?max_ttl ?namespace ?policies
  ~role __id =
  let __type = "vault_aws_auth_backend_role_tag" in
  let __attrs =
    ({
       tf_name = __id;
       allow_instance_migration = Prop.computed __type __id "allow_instance_migration";
       backend = Prop.computed __type __id "backend";
       disallow_reauthentication = Prop.computed __type __id "disallow_reauthentication";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
       role = Prop.computed __type __id "role";
       tag_key = Prop.computed __type __id "tag_key";
       tag_value = Prop.computed __type __id "tag_value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_role_tag
        (vault_aws_auth_backend_role_tag ?allow_instance_migration ?backend ?disallow_reauthentication ?id ?instance_id
           ?max_ttl ?namespace ?policies ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_instance_migration ?backend ?disallow_reauthentication ?id ?instance_id ?max_ttl
  ?namespace ?policies ~role __id =
  let (r : _ Tf_core.resource) =
    make ?allow_instance_migration ?backend ?disallow_reauthentication ?id ?instance_id ?max_ttl ?namespace ?policies
      ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
