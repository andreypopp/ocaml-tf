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

type azurerm_app_service_slot_virtual_network_swift_connection = {
  app_service_id : string prop;  (** app_service_id *)
  id : string prop option; [@option]  (** id *)
  slot_name : string prop;  (** slot_name *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_virtual_network_swift_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_slot_virtual_network_swift_connection ?id
    ?timeouts ~app_service_id ~slot_name ~subnet_id () :
    azurerm_app_service_slot_virtual_network_swift_connection =
  { app_service_id; id; slot_name; subnet_id; timeouts }

type t = {
  app_service_id : string prop;
  id : string prop;
  slot_name : string prop;
  subnet_id : string prop;
}

let register ?tf_module ?id ?timeouts ~app_service_id ~slot_name
    ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_app_service_slot_virtual_network_swift_connection"
  in
  let __resource =
    azurerm_app_service_slot_virtual_network_swift_connection ?id
      ?timeouts ~app_service_id ~slot_name ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_slot_virtual_network_swift_connection
       __resource);
  let __resource_attributes =
    ({
       app_service_id =
         Prop.computed __resource_type __resource_id "app_service_id";
       id = Prop.computed __resource_type __resource_id "id";
       slot_name =
         Prop.computed __resource_type __resource_id "slot_name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
