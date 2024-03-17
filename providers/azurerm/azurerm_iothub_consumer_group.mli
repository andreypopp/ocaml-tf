(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_consumer_group__timeouts
type azurerm_iothub_consumer_group

type t = private {
  eventhub_endpoint_name : string prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_iothub_consumer_group :
  ?id:string prop ->
  ?timeouts:azurerm_iothub_consumer_group__timeouts ->
  eventhub_endpoint_name:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
