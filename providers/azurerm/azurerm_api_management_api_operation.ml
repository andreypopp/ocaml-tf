(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type request__header__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** request__header__example *)

type request__header = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : request__header__example list;
}
[@@deriving yojson_of]
(** request__header *)

type request__query_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** request__query_parameter__example *)

type request__query_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : request__query_parameter__example list;
}
[@@deriving yojson_of]
(** request__query_parameter *)

type request__representation__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** request__representation__example *)

type request__representation__form_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** request__representation__form_parameter__example *)

type request__representation__form_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : request__representation__form_parameter__example list;
}
[@@deriving yojson_of]
(** request__representation__form_parameter *)

type request__representation = {
  content_type : string prop;  (** content_type *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_name : string prop option; [@option]  (** type_name *)
  example : request__representation__example list;
  form_parameter : request__representation__form_parameter list;
}
[@@deriving yojson_of]
(** request__representation *)

type request = {
  description : string prop option; [@option]  (** description *)
  header : request__header list;
  query_parameter : request__query_parameter list;
  representation : request__representation list;
}
[@@deriving yojson_of]
(** request *)

type response__header__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** response__header__example *)

type response__header = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : response__header__example list;
}
[@@deriving yojson_of]
(** response__header *)

type response__representation__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** response__representation__example *)

type response__representation__form_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** response__representation__form_parameter__example *)

type response__representation__form_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : response__representation__form_parameter__example list;
}
[@@deriving yojson_of]
(** response__representation__form_parameter *)

type response__representation = {
  content_type : string prop;  (** content_type *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_name : string prop option; [@option]  (** type_name *)
  example : response__representation__example list;
  form_parameter : response__representation__form_parameter list;
}
[@@deriving yojson_of]
(** response__representation *)

type response = {
  description : string prop option; [@option]  (** description *)
  status_code : float prop;  (** status_code *)
  header : response__header list;
  representation : response__representation list;
}
[@@deriving yojson_of]
(** response *)

type template_parameter__example = {
  description : string prop option; [@option]  (** description *)
  external_value : string prop option; [@option]
      (** external_value *)
  name : string prop;  (** name *)
  summary : string prop option; [@option]  (** summary *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** template_parameter__example *)

type template_parameter = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop;  (** required *)
  schema_id : string prop option; [@option]  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_name : string prop option; [@option]  (** type_name *)
  values : string prop list option; [@option]  (** values *)
  example : template_parameter__example list;
}
[@@deriving yojson_of]
(** template_parameter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  request : request list;
  response : response list;
  template_parameter : template_parameter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation *)

let request__header__example ?description ?external_value ?summary
    ?value ~name () : request__header__example =
  { description; external_value; name; summary; value }

let request__header ?default_value ?description ?schema_id ?type_name
    ?values ~name ~required ~type_ ~example () : request__header =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__query_parameter__example ?description ?external_value
    ?summary ?value ~name () : request__query_parameter__example =
  { description; external_value; name; summary; value }

let request__query_parameter ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    request__query_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__representation__example ?description ?external_value
    ?summary ?value ~name () : request__representation__example =
  { description; external_value; name; summary; value }

let request__representation__form_parameter__example ?description
    ?external_value ?summary ?value ~name () :
    request__representation__form_parameter__example =
  { description; external_value; name; summary; value }

let request__representation__form_parameter ?default_value
    ?description ?schema_id ?type_name ?values ~name ~required ~type_
    ~example () : request__representation__form_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let request__representation ?schema_id ?type_name ~content_type
    ~example ~form_parameter () : request__representation =
  { content_type; schema_id; type_name; example; form_parameter }

let request ?description ~header ~query_parameter ~representation ()
    : request =
  { description; header; query_parameter; representation }

let response__header__example ?description ?external_value ?summary
    ?value ~name () : response__header__example =
  { description; external_value; name; summary; value }

let response__header ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    response__header =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let response__representation__example ?description ?external_value
    ?summary ?value ~name () : response__representation__example =
  { description; external_value; name; summary; value }

let response__representation__form_parameter__example ?description
    ?external_value ?summary ?value ~name () :
    response__representation__form_parameter__example =
  { description; external_value; name; summary; value }

let response__representation__form_parameter ?default_value
    ?description ?schema_id ?type_name ?values ~name ~required ~type_
    ~example () : response__representation__form_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let response__representation ?schema_id ?type_name ~content_type
    ~example ~form_parameter () : response__representation =
  { content_type; schema_id; type_name; example; form_parameter }

let response ?description ~status_code ~header ~representation () :
    response =
  { description; status_code; header; representation }

let template_parameter__example ?description ?external_value ?summary
    ?value ~name () : template_parameter__example =
  { description; external_value; name; summary; value }

let template_parameter ?default_value ?description ?schema_id
    ?type_name ?values ~name ~required ~type_ ~example () :
    template_parameter =
  {
    default_value;
    description;
    name;
    required;
    schema_id;
    type_;
    type_name;
    values;
    example;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_operation ?description ?id ?timeouts
    ~api_management_name ~api_name ~display_name ~method_
    ~operation_id ~resource_group_name ~url_template ~request
    ~response ~template_parameter () :
    azurerm_api_management_api_operation =
  {
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

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~api_name ~display_name ~method_
    ~operation_id ~resource_group_name ~url_template ~request
    ~response ~template_parameter __resource_id =
  let __resource_type = "azurerm_api_management_api_operation" in
  let __resource =
    azurerm_api_management_api_operation ?description ?id ?timeouts
      ~api_management_name ~api_name ~display_name ~method_
      ~operation_id ~resource_group_name ~url_template ~request
      ~response ~template_parameter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
