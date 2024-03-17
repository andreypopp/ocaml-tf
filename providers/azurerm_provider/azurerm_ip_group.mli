(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ip_group__timeouts
type azurerm_ip_group

val azurerm_ip_group :
  ?cidrs:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_ip_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
