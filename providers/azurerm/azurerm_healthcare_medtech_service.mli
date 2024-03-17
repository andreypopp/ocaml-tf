(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_medtech_service__identity
type azurerm_healthcare_medtech_service__timeouts
type azurerm_healthcare_medtech_service

type t = private {
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val azurerm_healthcare_medtech_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthcare_medtech_service__timeouts ->
  device_mapping_json:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_name:string prop ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  identity:azurerm_healthcare_medtech_service__identity list ->
  string ->
  t
