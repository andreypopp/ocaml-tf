(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_enrichment__timeouts
type azurerm_iothub_enrichment

val azurerm_iothub_enrichment :
  ?id:string prop ->
  ?timeouts:azurerm_iothub_enrichment__timeouts ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  key:string prop ->
  resource_group_name:string prop ->
  value:string prop ->
  string ->
  unit
