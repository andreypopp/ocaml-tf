(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_video_analyzer_edge_module__timeouts
type azurerm_video_analyzer_edge_module

val azurerm_video_analyzer_edge_module :
  ?id:string prop ->
  ?timeouts:azurerm_video_analyzer_edge_module__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  video_analyzer_name:string prop ->
  string ->
  unit
