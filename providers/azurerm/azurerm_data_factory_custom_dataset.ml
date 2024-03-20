(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** linked_service *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_custom_dataset = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  schema_json : string prop option; [@option]  (** schema_json *)
  type_ : string prop; [@key "type"]  (** type *)
  type_properties_json : string prop;  (** type_properties_json *)
  linked_service : linked_service list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_custom_dataset *)

let linked_service ?parameters ~name () : linked_service =
  { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_custom_dataset ?additional_properties
    ?annotations ?description ?folder ?id ?parameters ?schema_json
    ?timeouts ~data_factory_id ~name ~type_ ~type_properties_json
    ~linked_service () : azurerm_data_factory_custom_dataset =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    folder;
    id;
    name;
    parameters;
    schema_json;
    type_;
    type_properties_json;
    linked_service;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schema_json : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

let make ?additional_properties ?annotations ?description ?folder ?id
    ?parameters ?schema_json ?timeouts ~data_factory_id ~name ~type_
    ~type_properties_json ~linked_service __id =
  let __type = "azurerm_data_factory_custom_dataset" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       schema_json = Prop.computed __type __id "schema_json";
       type_ = Prop.computed __type __id "type";
       type_properties_json =
         Prop.computed __type __id "type_properties_json";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_custom_dataset
        (azurerm_data_factory_custom_dataset ?additional_properties
           ?annotations ?description ?folder ?id ?parameters
           ?schema_json ?timeouts ~data_factory_id ~name ~type_
           ~type_properties_json ~linked_service ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?folder ?id ?parameters ?schema_json ?timeouts
    ~data_factory_id ~name ~type_ ~type_properties_json
    ~linked_service __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?folder ?id
      ?parameters ?schema_json ?timeouts ~data_factory_id ~name
      ~type_ ~type_properties_json ~linked_service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
