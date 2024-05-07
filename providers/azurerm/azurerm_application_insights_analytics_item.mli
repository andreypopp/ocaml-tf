(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_insights_analytics_item

val azurerm_application_insights_analytics_item :
  ?function_alias:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  content:string prop ->
  name:string prop ->
  scope:string prop ->
  type_:string prop ->
  unit ->
  azurerm_application_insights_analytics_item

val yojson_of_azurerm_application_insights_analytics_item :
  azurerm_application_insights_analytics_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_insights_id : string prop;
  content : string prop;
  function_alias : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
  time_created : string prop;
  time_modified : string prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?function_alias:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  content:string prop ->
  name:string prop ->
  scope:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?function_alias:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  content:string prop ->
  name:string prop ->
  scope:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
