(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_cluster_trusted_access_role_binding = {
  id : string prop option; [@option]  (** id *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  name : string prop;  (** name *)
  roles : string prop list;  (** roles *)
  source_resource_id : string prop;  (** source_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_trusted_access_role_binding *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_cluster_trusted_access_role_binding ?id
    ?timeouts ~kubernetes_cluster_id ~name ~roles ~source_resource_id
    () : azurerm_kubernetes_cluster_trusted_access_role_binding =
  {
    id;
    kubernetes_cluster_id;
    name;
    roles;
    source_resource_id;
    timeouts;
  }

type t = {
  id : string prop;
  kubernetes_cluster_id : string prop;
  name : string prop;
  roles : string list prop;
  source_resource_id : string prop;
}

let make ?id ?timeouts ~kubernetes_cluster_id ~name ~roles
    ~source_resource_id __id =
  let __type =
    "azurerm_kubernetes_cluster_trusted_access_role_binding"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       name = Prop.computed __type __id "name";
       roles = Prop.computed __type __id "roles";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding
        (azurerm_kubernetes_cluster_trusted_access_role_binding ?id
           ?timeouts ~kubernetes_cluster_id ~name ~roles
           ~source_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~kubernetes_cluster_id ~name
    ~roles ~source_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~kubernetes_cluster_id ~name ~roles
      ~source_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
