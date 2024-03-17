(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection *)

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__upgrade = {
  kubernetes_version : string option; [@option]
      (** kubernetes_version *)
  type_ : string; [@key "type"]  (** type *)
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
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__stage__group *)

type azurerm_kubernetes_fleet_update_run__stage = {
  after_stage_wait_in_seconds : float option; [@option]
      (** after_stage_wait_in_seconds *)
  name : string;  (** name *)
  group : azurerm_kubernetes_fleet_update_run__stage__group list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__stage *)

type azurerm_kubernetes_fleet_update_run__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run__timeouts *)

type azurerm_kubernetes_fleet_update_run = {
  fleet_update_strategy_id : string option; [@option]
      (** fleet_update_strategy_id *)
  kubernetes_fleet_manager_id : string;
      (** kubernetes_fleet_manager_id *)
  name : string;  (** name *)
  managed_cluster_update :
    azurerm_kubernetes_fleet_update_run__managed_cluster_update list;
  stage : azurerm_kubernetes_fleet_update_run__stage list;
  timeouts : azurerm_kubernetes_fleet_update_run__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run *)

let azurerm_kubernetes_fleet_update_run ?fleet_update_strategy_id
    ?timeouts ~kubernetes_fleet_manager_id ~name
    ~managed_cluster_update ~stage __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_update_run" in
  let __resource =
    {
      fleet_update_strategy_id;
      kubernetes_fleet_manager_id;
      name;
      managed_cluster_update;
      stage;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_update_run __resource);
  ()
