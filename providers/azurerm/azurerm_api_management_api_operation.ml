(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_operation__request__header__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__header__example *)

type azurerm_api_management_api_operation__request__header = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__request__header__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__header *)

type azurerm_api_management_api_operation__request__query_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__query_parameter__example *)

type azurerm_api_management_api_operation__request__query_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__request__query_parameter__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__query_parameter *)

type azurerm_api_management_api_operation__request__representation__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__representation__example *)

type azurerm_api_management_api_operation__request__representation__form_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__representation__form_parameter__example *)

type azurerm_api_management_api_operation__request__representation__form_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__request__representation__form_parameter__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__representation__form_parameter *)

type azurerm_api_management_api_operation__request__representation = {
  content_type : string prop;  (** content_type *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_name : string prop option; [@option]  (** type_name *)
  example :
    azurerm_api_management_api_operation__request__representation__example
    list;
  form_parameter :
    azurerm_api_management_api_operation__request__representation__form_parameter
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request__representation *)

type azurerm_api_management_api_operation__request = {
  description : string prop option; [@option]  (** description *)
  header :
    azurerm_api_management_api_operation__request__header list;
  query_parameter :
    azurerm_api_management_api_operation__request__query_parameter
    list;
  representation :
    azurerm_api_management_api_operation__request__representation
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__request *)

type azurerm_api_management_api_operation__response__header__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__header__example *)

type azurerm_api_management_api_operation__response__header = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__response__header__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__header *)

type azurerm_api_management_api_operation__response__representation__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__representation__example *)

type azurerm_api_management_api_operation__response__representation__form_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__representation__form_parameter__example *)

type azurerm_api_management_api_operation__response__representation__form_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__response__representation__form_parameter__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__representation__form_parameter *)

type azurerm_api_management_api_operation__response__representation = {
  content_type : string prop;  (** content_type *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_name : string prop option; [@option]  (** type_name *)
  example :
    azurerm_api_management_api_operation__response__representation__example
    list;
  form_parameter :
    azurerm_api_management_api_operation__response__representation__form_parameter
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response__representation *)

type azurerm_api_management_api_operation__response = {
  description : string prop option; [@option]  (** description *)
  status_code : float prop;  (** status_code *)
  header :
    azurerm_api_management_api_operation__response__header list;
  representation :
    azurerm_api_management_api_operation__response__representation
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__response *)

type azurerm_api_management_api_operation__template_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__template_parameter__example *)

type azurerm_api_management_api_operation__template_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example :
    azurerm_api_management_api_operation__template_parameter__example
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__template_parameter *)

type azurerm_api_management_api_operation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation__timeouts *)

type azurerm_api_management_api_operation = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  method_ : string prop; [@key "method"]  (** method *)
  operation_id : string prop;  (** operation_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  url_template : string prop;  (** url_template *)
  request : azurerm_api_management_api_operation__request list;
  response : azurerm_api_management_api_operation__response list;
  template_parameter :
    azurerm_api_management_api_operation__template_parameter list;
  timeouts : azurerm_api_management_api_operation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation *)

type t = {
  api_management_name : string prop;
  api_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  method_ : string prop;
  operation_id : string prop;
  resource_group_name : string prop;
  url_template : string prop;
}

let azurerm_api_management_api_operation ?description ?id ?timeouts
    ~api_management_name ~api_name ~display_name ~method_
    ~operation_id ~resource_group_name ~url_template ~request
    ~response ~template_parameter __resource_id =
  let __resource_type = "azurerm_api_management_api_operation" in
  let __resource =
    ({
       api_management_name;
       api_name;
       description;
       display_name;
       id;
       method_;
       operation_id;
       resource_group_name;
       url_template;
       request;
       response;
       template_parameter;
       timeouts;
     }
      : azurerm_api_management_api_operation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_operation __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_name =
         Prop.computed __resource_type __resource_id "api_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       method_ = Prop.computed __resource_type __resource_id "method";
       operation_id =
         Prop.computed __resource_type __resource_id "operation_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       url_template =
         Prop.computed __resource_type __resource_id "url_template";
     }
      : t)
  in
  __resource_attributes
