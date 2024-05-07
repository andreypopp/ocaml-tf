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

type azurerm_iothub_enrichment

val azurerm_iothub_enrichment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  key:string prop ->
  resource_group_name:string prop ->
  value:string prop ->
  unit ->
  azurerm_iothub_enrichment

val yojson_of_azurerm_iothub_enrichment :
  azurerm_iothub_enrichment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  key : string prop;
  resource_group_name : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  key:string prop ->
  resource_group_name:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  key:string prop ->
  resource_group_name:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
