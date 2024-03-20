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

type azurerm_function_app_active_slot = {
  id : string prop option; [@option]  (** id *)
  overwrite_network_config : bool prop option; [@option]
      (** The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. *)
  slot_id : string prop;
      (** The ID of the Slot to swap with `Production`. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_active_slot *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_active_slot ?id ?overwrite_network_config
    ?timeouts ~slot_id () : azurerm_function_app_active_slot =
  { id; overwrite_network_config; slot_id; timeouts }

type t = {
  id : string prop;
  last_successful_swap : string prop;
  overwrite_network_config : bool prop;
  slot_id : string prop;
}

let make ?id ?overwrite_network_config ?timeouts ~slot_id __id =
  let __type = "azurerm_function_app_active_slot" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       last_successful_swap =
         Prop.computed __type __id "last_successful_swap";
       overwrite_network_config =
         Prop.computed __type __id "overwrite_network_config";
       slot_id = Prop.computed __type __id "slot_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_active_slot
        (azurerm_function_app_active_slot ?id
           ?overwrite_network_config ?timeouts ~slot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?overwrite_network_config ?timeouts
    ~slot_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?overwrite_network_config ?timeouts ~slot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
