(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_strategy__stage__group = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__stage__group *)

type azurerm_kubernetes_fleet_update_strategy__stage = {
  after_stage_wait_in_seconds : float prop option; [@option]
      (** after_stage_wait_in_seconds *)
  name : string prop;  (** name *)
  group : azurerm_kubernetes_fleet_update_strategy__stage__group list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__stage *)

type azurerm_kubernetes_fleet_update_strategy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy__timeouts *)

type azurerm_kubernetes_fleet_update_strategy = {
  id : string prop option; [@option]  (** id *)
  kubernetes_fleet_manager_id : string prop;
      (** kubernetes_fleet_manager_id *)
  name : string prop;  (** name *)
  stage : azurerm_kubernetes_fleet_update_strategy__stage list;
  timeouts :
    azurerm_kubernetes_fleet_update_strategy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy *)

type t = {
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let azurerm_kubernetes_fleet_update_strategy ?id ?timeouts
    ~kubernetes_fleet_manager_id ~name ~stage __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_update_strategy" in
  let __resource =
    ({ id; kubernetes_fleet_manager_id; name; stage; timeouts }
      : azurerm_kubernetes_fleet_update_strategy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_update_strategy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_fleet_manager_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_fleet_manager_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
