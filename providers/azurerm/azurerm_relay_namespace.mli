(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_namespace__timeouts
type azurerm_relay_namespace

type t = private {
  id : string prop;
  location : string prop;
  metric_id : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_relay_namespace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_relay_namespace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
