(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_consumer_group = {
  eventhub_endpoint_name : string prop;
      (** eventhub_endpoint_name *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_consumer_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_iothub_consumer_group ?id ?timeouts
    ~eventhub_endpoint_name ~iothub_name ~name ~resource_group_name
    () : azurerm_iothub_consumer_group =
  {
    eventhub_endpoint_name;
    id;
    iothub_name;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  eventhub_endpoint_name : string prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~eventhub_endpoint_name ~iothub_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_consumer_group" in
  let __attrs =
    ({
       eventhub_endpoint_name =
         Prop.computed __type __id "eventhub_endpoint_name";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_consumer_group
        (azurerm_iothub_consumer_group ?id ?timeouts
           ~eventhub_endpoint_name ~iothub_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~eventhub_endpoint_name
    ~iothub_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~eventhub_endpoint_name ~iothub_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
