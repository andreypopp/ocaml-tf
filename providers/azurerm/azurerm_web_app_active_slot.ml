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

type azurerm_web_app_active_slot = {
  id : string prop option; [@option]  (** id *)
  overwrite_network_config : bool prop option; [@option]
      (** The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. *)
  slot_id : string prop;
      (** The ID of the Slot to swap with `Production`. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_app_active_slot *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_web_app_active_slot ?id ?overwrite_network_config
    ?timeouts ~slot_id () : azurerm_web_app_active_slot =
  { id; overwrite_network_config; slot_id; timeouts }

type t = {
  id : string prop;
  last_successful_swap : string prop;
  overwrite_network_config : bool prop;
  slot_id : string prop;
}

let register ?tf_module ?id ?overwrite_network_config ?timeouts
    ~slot_id __resource_id =
  let __resource_type = "azurerm_web_app_active_slot" in
  let __resource =
    azurerm_web_app_active_slot ?id ?overwrite_network_config
      ?timeouts ~slot_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_app_active_slot __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       last_successful_swap =
         Prop.computed __resource_type __resource_id
           "last_successful_swap";
       overwrite_network_config =
         Prop.computed __resource_type __resource_id
           "overwrite_network_config";
       slot_id =
         Prop.computed __resource_type __resource_id "slot_id";
     }
      : t)
  in
  __resource_attributes
