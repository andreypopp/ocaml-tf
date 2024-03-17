(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_sync__timeouts
type azurerm_storage_sync

type t = private {
  id : string prop;
  incoming_traffic_policy : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_storage_sync :
  ?id:string prop ->
  ?incoming_traffic_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_storage_sync__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
