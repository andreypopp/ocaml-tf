(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_data_collection_rule_association__timeouts
type azurerm_monitor_data_collection_rule_association

val azurerm_monitor_data_collection_rule_association :
  ?data_collection_endpoint_id:string ->
  ?data_collection_rule_id:string ->
  ?description:string ->
  ?name:string ->
  ?timeouts:
    azurerm_monitor_data_collection_rule_association__timeouts ->
  target_resource_id:string ->
  string ->
  unit
