(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_function_azure_traffic_collector__timeouts
type azurerm_network_function_azure_traffic_collector

type t = private {
  collector_policy_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_hub_id : string list prop;
}

val azurerm_network_function_azure_traffic_collector :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_network_function_azure_traffic_collector__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
