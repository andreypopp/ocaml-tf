(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_app_active_slot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_app_active_slot__timeouts *)

type azurerm_web_app_active_slot = {
  overwrite_network_config : bool option; [@option]
      (** The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. *)
  slot_id : string;
      (** The ID of the Slot to swap with `Production`. *)
  timeouts : azurerm_web_app_active_slot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_app_active_slot *)

let azurerm_web_app_active_slot ?overwrite_network_config ?timeouts
    ~slot_id __resource_id =
  let __resource_type = "azurerm_web_app_active_slot" in
  let __resource = { overwrite_network_config; slot_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_app_active_slot __resource);
  ()
