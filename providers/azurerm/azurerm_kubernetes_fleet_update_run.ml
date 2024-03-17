(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection *)

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__upgrade = {
  kubernetes_version : string prop option; [@option]
      (** kubernetes_version *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__managed_cluster_update__upgrade *)

type azurerm_kubernetes_fleet_update_run__managed_cluster_update = {
  node_image_selection :
    azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection
    list;
  upgrade :
    azurerm_kubernetes_fleet_update_run__managed_cluster_update__upgrade
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__managed_cluster_update *)

type azurerm_kubernetes_fleet_update_run__stage__group = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__stage__group *)

type azurerm_kubernetes_fleet_update_run__stage = {
  after_stage_wait_in_seconds : float prop option; [@option]
      (** after_stage_wait_in_seconds *)
  name : string prop;  (** name *)
  group : azurerm_kubernetes_fleet_update_run__stage__group list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__stage *)

type azurerm_kubernetes_fleet_update_run__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__timeouts *)

type azurerm_kubernetes_fleet_update_run = {
  fleet_update_strategy_id : string prop option; [@option]
      (** fleet_update_strategy_id *)
  id : string prop option; [@option]  (** id *)
  kubernetes_fleet_manager_id : string prop;
      (** kubernetes_fleet_manager_id *)
  name : string prop;  (** name *)
  managed_cluster_update :
    azurerm_kubernetes_fleet_update_run__managed_cluster_update list;
  stage : azurerm_kubernetes_fleet_update_run__stage list;
  timeouts : azurerm_kubernetes_fleet_update_run__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run *)

type t = {
  fleet_update_strategy_id : string prop;
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let azurerm_kubernetes_fleet_update_run ?fleet_update_strategy_id ?id
    ?timeouts ~kubernetes_fleet_manager_id ~name
    ~managed_cluster_update ~stage __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_update_run" in
  let __resource =
    ({
       fleet_update_strategy_id;
       id;
       kubernetes_fleet_manager_id;
       name;
       managed_cluster_update;
       stage;
       timeouts;
     }
      : azurerm_kubernetes_fleet_update_run)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_update_run __resource);
  let __resource_attributes =
    ({
       fleet_update_strategy_id =
         Prop.computed __resource_type __resource_id
           "fleet_update_strategy_id";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_fleet_manager_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_fleet_manager_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
