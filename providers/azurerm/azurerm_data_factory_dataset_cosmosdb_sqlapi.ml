(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** schema_column *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_dataset_cosmosdb_sqlapi = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  collection_name : string prop option; [@option]
      (** collection_name *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  schema_column : schema_column list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_cosmosdb_sqlapi *)

let schema_column ?description ?type_ ~name () : schema_column =
  { description; name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_dataset_cosmosdb_sqlapi
    ?additional_properties ?annotations ?collection_name ?description
    ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column () :
    azurerm_data_factory_dataset_cosmosdb_sqlapi =
  {
    additional_properties;
    annotations;
    collection_name;
    data_factory_id;
    description;
    folder;
    id;
    linked_service_name;
    name;
    parameters;
    schema_column;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  collection_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let make ?additional_properties ?annotations ?collection_name
    ?description ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column __id =
  let __type = "azurerm_data_factory_dataset_cosmosdb_sqlapi" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       collection_name = Prop.computed __type __id "collection_name";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       linked_service_name =
         Prop.computed __type __id "linked_service_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_dataset_cosmosdb_sqlapi
        (azurerm_data_factory_dataset_cosmosdb_sqlapi
           ?additional_properties ?annotations ?collection_name
           ?description ?folder ?id ?parameters ?timeouts
           ~data_factory_id ~linked_service_name ~name ~schema_column
           ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?collection_name ?description ?folder ?id ?parameters ?timeouts
    ~data_factory_id ~linked_service_name ~name ~schema_column __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?collection_name
      ?description ?folder ?id ?parameters ?timeouts ~data_factory_id
      ~linked_service_name ~name ~schema_column __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
