(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_medtech_service__identity
type azurerm_healthcare_medtech_service__timeouts
type azurerm_healthcare_medtech_service

val azurerm_healthcare_medtech_service :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_medtech_service__timeouts ->
  device_mapping_json:string ->
  eventhub_consumer_group_name:string ->
  eventhub_name:string ->
  eventhub_namespace_name:string ->
  location:string ->
  name:string ->
  workspace_id:string ->
  identity:azurerm_healthcare_medtech_service__identity list ->
  string ->
  unit
