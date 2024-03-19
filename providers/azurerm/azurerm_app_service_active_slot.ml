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

type azurerm_app_service_active_slot = {
  app_service_name : string prop;  (** app_service_name *)
  app_service_slot_name : string prop;  (** app_service_slot_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_active_slot *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_active_slot ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name () :
    azurerm_app_service_active_slot =
  {
    app_service_name;
    app_service_slot_name;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  app_service_slot_name : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_active_slot" in
  let __resource =
    azurerm_app_service_active_slot ?id ?timeouts ~app_service_name
      ~app_service_slot_name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_active_slot __resource);
  let __resource_attributes =
    ({
       app_service_name =
         Prop.computed __resource_type __resource_id
           "app_service_name";
       app_service_slot_name =
         Prop.computed __resource_type __resource_id
           "app_service_slot_name";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
