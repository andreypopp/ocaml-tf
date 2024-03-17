(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ip_group__timeouts
type azurerm_ip_group

val azurerm_ip_group :
  ?cidrs:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_ip_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
