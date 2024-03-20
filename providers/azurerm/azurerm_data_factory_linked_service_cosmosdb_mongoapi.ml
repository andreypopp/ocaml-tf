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

type azurerm_data_factory_linked_service_cosmosdb_mongoapi = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  database : string prop option; [@option]  (** database *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  server_version_is_32_or_higher : bool prop option; [@option]
      (** server_version_is_32_or_higher *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_cosmosdb_mongoapi *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_cosmosdb_mongoapi
    ?additional_properties ?annotations ?connection_string ?database
    ?description ?id ?integration_runtime_name ?parameters
    ?server_version_is_32_or_higher ?timeouts ~data_factory_id ~name
    () : azurerm_data_factory_linked_service_cosmosdb_mongoapi =
  {
    additional_properties;
    annotations;
    connection_string;
    data_factory_id;
    database;
    description;
    id;
    integration_runtime_name;
    name;
    parameters;
    server_version_is_32_or_higher;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  database : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  server_version_is_32_or_higher : bool prop;
}

let make ?additional_properties ?annotations ?connection_string
    ?database ?description ?id ?integration_runtime_name ?parameters
    ?server_version_is_32_or_higher ?timeouts ~data_factory_id ~name
    __id =
  let __type =
    "azurerm_data_factory_linked_service_cosmosdb_mongoapi"
  in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       connection_string =
         Prop.computed __type __id "connection_string";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       database = Prop.computed __type __id "database";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       server_version_is_32_or_higher =
         Prop.computed __type __id "server_version_is_32_or_higher";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_cosmosdb_mongoapi
        (azurerm_data_factory_linked_service_cosmosdb_mongoapi
           ?additional_properties ?annotations ?connection_string
           ?database ?description ?id ?integration_runtime_name
           ?parameters ?server_version_is_32_or_higher ?timeouts
           ~data_factory_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?connection_string ?database ?description ?id
    ?integration_runtime_name ?parameters
    ?server_version_is_32_or_higher ?timeouts ~data_factory_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?connection_string
      ?database ?description ?id ?integration_runtime_name
      ?parameters ?server_version_is_32_or_higher ?timeouts
      ~data_factory_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
