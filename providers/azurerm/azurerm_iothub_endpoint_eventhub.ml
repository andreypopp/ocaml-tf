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

type azurerm_iothub_endpoint_eventhub = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  endpoint_uri : string prop option; [@option]  (** endpoint_uri *)
  entity_path : string prop option; [@option]  (** entity_path *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_eventhub *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_endpoint_eventhub ?authentication_type
    ?connection_string ?endpoint_uri ?entity_path ?id ?identity_id
    ?timeouts ~iothub_id ~name ~resource_group_name () :
    azurerm_iothub_endpoint_eventhub =
  {
    authentication_type;
    connection_string;
    endpoint_uri;
    entity_path;
    id;
    identity_id;
    iothub_id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  connection_string : string prop;
  endpoint_uri : string prop;
  entity_path : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?authentication_type ?connection_string ?endpoint_uri
    ?entity_path ?id ?identity_id ?timeouts ~iothub_id ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_endpoint_eventhub" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       connection_string =
         Prop.computed __type __id "connection_string";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       entity_path = Prop.computed __type __id "entity_path";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       iothub_id = Prop.computed __type __id "iothub_id";
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
      yojson_of_azurerm_iothub_endpoint_eventhub
        (azurerm_iothub_endpoint_eventhub ?authentication_type
           ?connection_string ?endpoint_uri ?entity_path ?id
           ?identity_id ?timeouts ~iothub_id ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type ?connection_string
    ?endpoint_uri ?entity_path ?id ?identity_id ?timeouts ~iothub_id
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?connection_string ?endpoint_uri
      ?entity_path ?id ?identity_id ?timeouts ~iothub_id ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
