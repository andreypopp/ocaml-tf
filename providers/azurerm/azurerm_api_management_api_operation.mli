(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type request__header__example

val request__header__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  request__header__example

type request__header

val request__header :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:request__header__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  request__header

type request__query_parameter__example

val request__query_parameter__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  request__query_parameter__example

type request__query_parameter

val request__query_parameter :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:request__query_parameter__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  request__query_parameter

type request__representation__example

val request__representation__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  request__representation__example

type request__representation__form_parameter__example

val request__representation__form_parameter__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  request__representation__form_parameter__example

type request__representation__form_parameter

val request__representation__form_parameter :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:request__representation__form_parameter__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  request__representation__form_parameter

type request__representation

val request__representation :
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?example:request__representation__example list ->
  ?form_parameter:request__representation__form_parameter list ->
  content_type:string prop ->
  unit ->
  request__representation

type request

val request :
  ?description:string prop ->
  ?header:request__header list ->
  ?query_parameter:request__query_parameter list ->
  ?representation:request__representation list ->
  unit ->
  request

type response__header__example

val response__header__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  response__header__example

type response__header

val response__header :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:response__header__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  response__header

type response__representation__example

val response__representation__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  response__representation__example

type response__representation__form_parameter__example

val response__representation__form_parameter__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  response__representation__form_parameter__example

type response__representation__form_parameter

val response__representation__form_parameter :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:response__representation__form_parameter__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  response__representation__form_parameter

type response__representation

val response__representation :
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?example:response__representation__example list ->
  ?form_parameter:response__representation__form_parameter list ->
  content_type:string prop ->
  unit ->
  response__representation

type response

val response :
  ?description:string prop ->
  ?header:response__header list ->
  ?representation:response__representation list ->
  status_code:float prop ->
  unit ->
  response

type template_parameter__example

val template_parameter__example :
  ?description:string prop ->
  ?external_value:string prop ->
  ?summary:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  template_parameter__example

type template_parameter

val template_parameter :
  ?default_value:string prop ->
  ?description:string prop ->
  ?schema_id:string prop ->
  ?type_name:string prop ->
  ?values:string prop list ->
  ?example:template_parameter__example list ->
  name:string prop ->
  required:bool prop ->
  type_:string prop ->
  unit ->
  template_parameter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_api_operation

val azurerm_api_management_api_operation :
  ?description:string prop ->
  ?id:string prop ->
  ?request:request list ->
  ?response:response list ->
  ?template_parameter:template_parameter list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  display_name:string prop ->
  method_:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  url_template:string prop ->
  unit ->
  azurerm_api_management_api_operation

val yojson_of_azurerm_api_management_api_operation :
  azurerm_api_management_api_operation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?request:request list ->
  ?response:response list ->
  ?template_parameter:template_parameter list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  display_name:string prop ->
  method_:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  url_template:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?request:request list ->
  ?response:response list ->
  ?template_parameter:template_parameter list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  display_name:string prop ->
  method_:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  url_template:string prop ->
  string ->
  t Tf_core.resource
