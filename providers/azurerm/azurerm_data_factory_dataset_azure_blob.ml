(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type azurerm_data_factory_dataset_azure_blob = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop option; [@option]  (** filename *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  path : string prop option; [@option]  (** path *)
  schema_column : schema_column list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_blob *)

let schema_column ?description ?type_ ~name () : schema_column =
  { description; name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_dataset_azure_blob ?additional_properties
    ?annotations ?description ?dynamic_filename_enabled
    ?dynamic_path_enabled ?filename ?folder ?id ?parameters ?path
    ?timeouts ~data_factory_id ~linked_service_name ~name
    ~schema_column () : azurerm_data_factory_dataset_azure_blob =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    dynamic_filename_enabled;
    dynamic_path_enabled;
    filename;
    folder;
    id;
    linked_service_name;
    name;
    parameters;
    path;
    schema_column;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  dynamic_filename_enabled : bool prop;
  dynamic_path_enabled : bool prop;
  filename : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  path : string prop;
}

let register ?tf_module ?additional_properties ?annotations
    ?description ?dynamic_filename_enabled ?dynamic_path_enabled
    ?filename ?folder ?id ?parameters ?path ?timeouts
    ~data_factory_id ~linked_service_name ~name ~schema_column
    __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_azure_blob" in
  let __resource =
    azurerm_data_factory_dataset_azure_blob ?additional_properties
      ?annotations ?description ?dynamic_filename_enabled
      ?dynamic_path_enabled ?filename ?folder ?id ?parameters ?path
      ?timeouts ~data_factory_id ~linked_service_name ~name
      ~schema_column ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_azure_blob __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       dynamic_filename_enabled =
         Prop.computed __resource_type __resource_id
           "dynamic_filename_enabled";
       dynamic_path_enabled =
         Prop.computed __resource_type __resource_id
           "dynamic_path_enabled";
       filename =
         Prop.computed __resource_type __resource_id "filename";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       linked_service_name =
         Prop.computed __resource_type __resource_id
           "linked_service_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       path = Prop.computed __resource_type __resource_id "path";
     }
      : t)
  in
  __resource_attributes
