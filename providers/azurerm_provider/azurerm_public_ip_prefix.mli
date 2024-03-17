(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_public_ip_prefix__timeouts
type azurerm_public_ip_prefix

val azurerm_public_ip_prefix :
  ?ip_version:string ->
  ?prefix_length:float ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_public_ip_prefix__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
