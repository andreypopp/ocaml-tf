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

type azurerm_log_analytics_query_pack_query

val azurerm_log_analytics_query_pack_query :
  ?additional_settings_json:string prop ->
  ?categories:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resource_types:string prop list ->
  ?solutions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  body:string prop ->
  display_name:string prop ->
  query_pack_id:string prop ->
  unit ->
  azurerm_log_analytics_query_pack_query

val yojson_of_azurerm_log_analytics_query_pack_query :
  azurerm_log_analytics_query_pack_query -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_settings_json : string prop;
  body : string prop;
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  query_pack_id : string prop;
  resource_types : string list prop;
  solutions : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_settings_json:string prop ->
  ?categories:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resource_types:string prop list ->
  ?solutions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  body:string prop ->
  display_name:string prop ->
  query_pack_id:string prop ->
  string ->
  t

val make :
  ?additional_settings_json:string prop ->
  ?categories:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resource_types:string prop list ->
  ?solutions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  body:string prop ->
  display_name:string prop ->
  query_pack_id:string prop ->
  string ->
  t Tf_core.resource
