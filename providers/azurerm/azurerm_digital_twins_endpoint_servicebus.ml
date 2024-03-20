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

type azurerm_digital_twins_endpoint_servicebus = {
  dead_letter_storage_secret : string prop option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string prop;  (** digital_twins_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  servicebus_primary_connection_string : string prop;
      (** servicebus_primary_connection_string *)
  servicebus_secondary_connection_string : string prop;
      (** servicebus_secondary_connection_string *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_servicebus *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_servicebus
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id ~name
    ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string () :
    azurerm_digital_twins_endpoint_servicebus =
  {
    dead_letter_storage_secret;
    digital_twins_id;
    id;
    name;
    servicebus_primary_connection_string;
    servicebus_secondary_connection_string;
    timeouts;
  }

type t = {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  id : string prop;
  name : string prop;
  servicebus_primary_connection_string : string prop;
  servicebus_secondary_connection_string : string prop;
}

let make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~name ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __id =
  let __type = "azurerm_digital_twins_endpoint_servicebus" in
  let __attrs =
    ({
       dead_letter_storage_secret =
         Prop.computed __type __id "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       servicebus_primary_connection_string =
         Prop.computed __type __id
           "servicebus_primary_connection_string";
       servicebus_secondary_connection_string =
         Prop.computed __type __id
           "servicebus_secondary_connection_string";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_endpoint_servicebus
        (azurerm_digital_twins_endpoint_servicebus
           ?dead_letter_storage_secret ?id ?timeouts
           ~digital_twins_id ~name
           ~servicebus_primary_connection_string
           ~servicebus_secondary_connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~name ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~name ~servicebus_primary_connection_string
      ~servicebus_secondary_connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
