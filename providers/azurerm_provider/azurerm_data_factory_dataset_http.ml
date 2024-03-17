(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_http__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__schema_column *)

type azurerm_data_factory_dataset_http__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__timeouts *)

type azurerm_data_factory_dataset_http = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  relative_url : string prop option; [@option]  (** relative_url *)
  request_body : string prop option; [@option]  (** request_body *)
  request_method : string prop option; [@option]
      (** request_method *)
  schema_column :
    azurerm_data_factory_dataset_http__schema_column list;
  timeouts : azurerm_data_factory_dataset_http__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http *)

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  relative_url : string prop;
  request_body : string prop;
  request_method : string prop;
}

let azurerm_data_factory_dataset_http ?additional_properties
    ?annotations ?description ?folder ?id ?parameters ?relative_url
    ?request_body ?request_method ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_http" in
  let __resource =
    ({
       additional_properties;
       annotations;
       data_factory_id;
       description;
       folder;
       id;
       linked_service_name;
       name;
       parameters;
       relative_url;
       request_body;
       request_method;
       schema_column;
       timeouts;
     }
      : azurerm_data_factory_dataset_http)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_http __resource);
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
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       linked_service_name =
         Prop.computed __resource_type __resource_id
           "linked_service_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       relative_url =
         Prop.computed __resource_type __resource_id "relative_url";
       request_body =
         Prop.computed __resource_type __resource_id "request_body";
       request_method =
         Prop.computed __resource_type __resource_id "request_method";
     }
      : t)
  in
  __resource_attributes
