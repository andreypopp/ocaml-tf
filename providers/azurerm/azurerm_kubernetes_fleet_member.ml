(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_member__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_member__timeouts *)

type azurerm_kubernetes_fleet_member = {
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  kubernetes_fleet_id : string prop;  (** kubernetes_fleet_id *)
  name : string prop;  (** name *)
  timeouts : azurerm_kubernetes_fleet_member__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_member *)

type t = {
  group : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  kubernetes_fleet_id : string prop;
  name : string prop;
}

let azurerm_kubernetes_fleet_member ?group ?id ?timeouts
    ~kubernetes_cluster_id ~kubernetes_fleet_id ~name __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_member" in
  let __resource =
    ({
       group;
       id;
       kubernetes_cluster_id;
       kubernetes_fleet_id;
       name;
       timeouts;
     }
      : azurerm_kubernetes_fleet_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_member __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_cluster_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_cluster_id";
       kubernetes_fleet_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_fleet_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
