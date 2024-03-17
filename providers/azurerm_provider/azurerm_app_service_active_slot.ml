(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_active_slot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_active_slot__timeouts *)

type azurerm_app_service_active_slot = {
  app_service_name : string prop;  (** app_service_name *)
  app_service_slot_name : string prop;  (** app_service_slot_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_app_service_active_slot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_active_slot *)

let azurerm_app_service_active_slot ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_active_slot" in
  let __resource =
    {
      app_service_name;
      app_service_slot_name;
      id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_active_slot __resource);
  ()
