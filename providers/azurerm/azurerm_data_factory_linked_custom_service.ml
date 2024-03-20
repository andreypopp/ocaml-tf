(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type integration_runtime = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** integration_runtime *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_linked_custom_service = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  type_ : string prop; [@key "type"]  (** type *)
  type_properties_json : string prop;  (** type_properties_json *)
  integration_runtime : integration_runtime list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service *)

let integration_runtime ?parameters ~name () : integration_runtime =
  { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_custom_service ?additional_properties
    ?annotations ?description ?id ?parameters ?timeouts
    ~data_factory_id ~name ~type_ ~type_properties_json
    ~integration_runtime () :
    azurerm_data_factory_linked_custom_service =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    id;
    name;
    parameters;
    type_;
    type_properties_json;
    integration_runtime;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  type_ : string prop;
  type_properties_json : string prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?parameters ?timeouts ~data_factory_id ~name ~type_
    ~type_properties_json ~integration_runtime __id =
  let __type = "azurerm_data_factory_linked_custom_service" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
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
      yojson_of_azurerm_data_factory_linked_custom_service
        (azurerm_data_factory_linked_custom_service
           ?additional_properties ?annotations ?description ?id
           ?parameters ?timeouts ~data_factory_id ~name ~type_
           ~type_properties_json ~integration_runtime ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?parameters ?timeouts ~data_factory_id ~name
    ~type_ ~type_properties_json ~integration_runtime __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?parameters ?timeouts ~data_factory_id ~name ~type_
      ~type_properties_json ~integration_runtime __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
