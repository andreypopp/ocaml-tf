(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_video_analyzer_edge_module

val azurerm_video_analyzer_edge_module :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  video_analyzer_name:string prop ->
  unit ->
  azurerm_video_analyzer_edge_module

val yojson_of_azurerm_video_analyzer_edge_module :
  azurerm_video_analyzer_edge_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  video_analyzer_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  video_analyzer_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  video_analyzer_name:string prop ->
  string ->
  t Tf_core.resource
