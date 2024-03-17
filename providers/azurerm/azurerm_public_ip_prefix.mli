(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_public_ip_prefix__timeouts
type azurerm_public_ip_prefix

type t = private {
  id : string prop;
  ip_prefix : string prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  prefix_length : float prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val azurerm_public_ip_prefix :
  ?id:string prop ->
  ?ip_version:string prop ->
  ?prefix_length:float prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_public_ip_prefix__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
