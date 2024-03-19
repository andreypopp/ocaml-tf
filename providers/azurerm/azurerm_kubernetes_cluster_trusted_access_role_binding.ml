(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~kubernetes_cluster_id ~name
    ~roles ~source_resource_id __resource_id =
  let __resource_type =
    "azurerm_kubernetes_cluster_trusted_access_role_binding"
  in
  let __resource =
    azurerm_kubernetes_cluster_trusted_access_role_binding ?id
      ?timeouts ~kubernetes_cluster_id ~name ~roles
      ~source_resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_cluster_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_cluster_id";
       name = Prop.computed __resource_type __resource_id "name";
       roles = Prop.computed __resource_type __resource_id "roles";
       source_resource_id =
         Prop.computed __resource_type __resource_id
           "source_resource_id";
     }
      : t)
  in
  __resource_attributes
