(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_data_collection_rule_association__timeouts
type azurerm_monitor_data_collection_rule_association

type t = private {
  data_collection_endpoint_id : string prop;
  data_collection_rule_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
}

val azurerm_monitor_data_collection_rule_association :
  ?data_collection_endpoint_id:string prop ->
  ?data_collection_rule_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:
    azurerm_monitor_data_collection_rule_association__timeouts ->
  target_resource_id:string prop ->
  string ->
  t
