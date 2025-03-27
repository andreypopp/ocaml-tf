(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_consul_secret_backend_role = {
  backend : string prop option; [@option]
  consul_namespace : string prop option; [@option]
  consul_policies : string prop list option; [@option]
  consul_roles : string prop list option; [@option]
  id : string prop option; [@option]
  local : bool prop option; [@option]
  max_ttl : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  node_identities : string prop list option; [@option]
  partition : string prop option; [@option]
  policies : string prop list option; [@option]
  service_identities : string prop list option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_consul_secret_backend_role) -> ()

let yojson_of_vault_consul_secret_backend_role =
  (function
   | {
       backend = v_backend;
       consul_namespace = v_consul_namespace;
       consul_policies = v_consul_policies;
       consul_roles = v_consul_roles;
       id = v_id;
       local = v_local;
       max_ttl = v_max_ttl;
       name = v_name;
       namespace = v_namespace;
       node_identities = v_node_identities;
       partition = v_partition;
       policies = v_policies;
       service_identities = v_service_identities;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_identities with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "service_identities", arg in
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
       match v_partition with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "partition", arg in
         bnd :: bnds
     in
     let bnds =
       match v_node_identities with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "node_identities", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_ttl", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_consul_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "consul_roles", arg in
         bnd :: bnds
     in
     let bnds =
       match v_consul_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "consul_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_consul_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "consul_namespace", arg in
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
     `Assoc bnds
    : vault_consul_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_consul_secret_backend_role

[@@@deriving.end]

let vault_consul_secret_backend_role ?backend ?consul_namespace ?consul_policies ?consul_roles ?id ?local ?max_ttl
  ?namespace ?node_identities ?partition ?policies ?service_identities ?ttl ~name () =
  ({
     backend;
     consul_namespace;
     consul_policies;
     consul_roles;
     id;
     local;
     max_ttl;
     name;
     namespace;
     node_identities;
     partition;
     policies;
     service_identities;
     ttl;
   }
    : vault_consul_secret_backend_role)

type t = {
  tf_name : string;
  backend : string prop;
  consul_namespace : string prop;
  consul_policies : string list prop;
  consul_roles : string list prop;
  id : string prop;
  local : bool prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  node_identities : string list prop;
  partition : string prop;
  policies : string list prop;
  service_identities : string list prop;
  ttl : float prop;
}

let make ?backend ?consul_namespace ?consul_policies ?consul_roles ?id ?local ?max_ttl ?namespace ?node_identities
  ?partition ?policies ?service_identities ?ttl ~name __id =
  let __type = "vault_consul_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       consul_namespace = Prop.computed __type __id "consul_namespace";
       consul_policies = Prop.computed __type __id "consul_policies";
       consul_roles = Prop.computed __type __id "consul_roles";
       id = Prop.computed __type __id "id";
       local = Prop.computed __type __id "local";
       max_ttl = Prop.computed __type __id "max_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       node_identities = Prop.computed __type __id "node_identities";
       partition = Prop.computed __type __id "partition";
       policies = Prop.computed __type __id "policies";
       service_identities = Prop.computed __type __id "service_identities";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_consul_secret_backend_role
        (vault_consul_secret_backend_role ?backend ?consul_namespace ?consul_policies ?consul_roles ?id ?local ?max_ttl
           ?namespace ?node_identities ?partition ?policies ?service_identities ?ttl ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?consul_namespace ?consul_policies ?consul_roles ?id ?local ?max_ttl ?namespace
  ?node_identities ?partition ?policies ?service_identities ?ttl ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?consul_namespace ?consul_policies ?consul_roles ?id ?local ?max_ttl ?namespace ?node_identities
      ?partition ?policies ?service_identities ?ttl ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
