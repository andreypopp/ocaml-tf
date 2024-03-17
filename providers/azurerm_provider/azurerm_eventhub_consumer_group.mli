(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_consumer_group__timeouts
type azurerm_eventhub_consumer_group

type t = private {
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

val azurerm_eventhub_consumer_group :
  ?id:string prop ->
  ?user_metadata:string prop ->
  ?timeouts:azurerm_eventhub_consumer_group__timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
