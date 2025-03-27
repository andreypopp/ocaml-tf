(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kubernetes_service_account_token = {
  backend : string prop;
  cluster_role_binding : bool prop option; [@option]
  id : string prop option; [@option]
  kubernetes_namespace : string prop;
  namespace : string prop option; [@option]
  role : string prop;
  ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kubernetes_service_account_token) -> ()

let yojson_of_vault_kubernetes_service_account_token =
  (function
   | {
       backend = v_backend;
       cluster_role_binding = v_cluster_role_binding;
       id = v_id;
       kubernetes_namespace = v_kubernetes_namespace;
       namespace = v_namespace;
       role = v_role;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_kubernetes_namespace in
       ("kubernetes_namespace", arg) :: bnds
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
       match v_cluster_role_binding with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "cluster_role_binding", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_kubernetes_service_account_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kubernetes_service_account_token

[@@@deriving.end]

let vault_kubernetes_service_account_token ?cluster_role_binding ?id ?namespace ?ttl ~backend ~kubernetes_namespace
  ~role () =
  ({ backend; cluster_role_binding; id; kubernetes_namespace; namespace; role; ttl }
    : vault_kubernetes_service_account_token)

type t = {
  tf_name : string;
  backend : string prop;
  cluster_role_binding : bool prop;
  id : string prop;
  kubernetes_namespace : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  namespace : string prop;
  role : string prop;
  service_account_name : string prop;
  service_account_namespace : string prop;
  service_account_token : string prop;
  ttl : string prop;
}

let make ?cluster_role_binding ?id ?namespace ?ttl ~backend ~kubernetes_namespace ~role __id =
  let __type = "vault_kubernetes_service_account_token" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       cluster_role_binding = Prop.computed __type __id "cluster_role_binding";
       id = Prop.computed __type __id "id";
       kubernetes_namespace = Prop.computed __type __id "kubernetes_namespace";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_id = Prop.computed __type __id "lease_id";
       lease_renewable = Prop.computed __type __id "lease_renewable";
       namespace = Prop.computed __type __id "namespace";
       role = Prop.computed __type __id "role";
       service_account_name = Prop.computed __type __id "service_account_name";
       service_account_namespace = Prop.computed __type __id "service_account_namespace";
       service_account_token = Prop.computed __type __id "service_account_token";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kubernetes_service_account_token
        (vault_kubernetes_service_account_token ?cluster_role_binding ?id ?namespace ?ttl ~backend ~kubernetes_namespace
           ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_role_binding ?id ?namespace ?ttl ~backend ~kubernetes_namespace ~role __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_role_binding ?id ?namespace ?ttl ~backend ~kubernetes_namespace ~role __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
