(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_snapshot__timeouts
type azurerm_netapp_snapshot

type t = private {
  account_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
}

val azurerm_netapp_snapshot :
  ?id:string prop ->
  ?timeouts:azurerm_netapp_snapshot__timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  volume_name:string prop ->
  string ->
  t
