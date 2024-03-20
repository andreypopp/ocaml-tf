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

let make ?id ?timeouts ~app_service_id ~slot_name ~subnet_id __id =
  let __type =
    "azurerm_app_service_slot_virtual_network_swift_connection"
  in
  let __attrs =
    ({
       app_service_id = Prop.computed __type __id "app_service_id";
       id = Prop.computed __type __id "id";
       slot_name = Prop.computed __type __id "slot_name";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_slot_virtual_network_swift_connection
        (azurerm_app_service_slot_virtual_network_swift_connection
           ?id ?timeouts ~app_service_id ~slot_name ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_id ~slot_name
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_id ~slot_name ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
