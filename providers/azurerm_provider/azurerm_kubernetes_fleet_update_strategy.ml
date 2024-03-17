(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kubernetes_fleet_update_strategy__stage__group = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__stage__group *)

type azurerm_kubernetes_fleet_update_strategy__stage = {
  after_stage_wait_in_seconds : float option; [@option]
      (** after_stage_wait_in_seconds *)
  name : string;  (** name *)
  group : azurerm_kubernetes_fleet_update_strategy__stage__group list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__stage *)

type azurerm_kubernetes_fleet_update_strategy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__timeouts *)

type azurerm_kubernetes_fleet_update_strategy = {
  kubernetes_fleet_manager_id : string;
      (** kubernetes_fleet_manager_id *)
  name : string;  (** name *)
  stage : azurerm_kubernetes_fleet_update_strategy__stage list;
  timeouts :
    azurerm_kubernetes_fleet_update_strategy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy *)

let azurerm_kubernetes_fleet_update_strategy ?timeouts
    ~kubernetes_fleet_manager_id ~name ~stage __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_update_strategy" in
  let __resource =
    { kubernetes_fleet_manager_id; name; stage; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_update_strategy __resource);
  ()
