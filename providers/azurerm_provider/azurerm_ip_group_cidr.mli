(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ip_group_cidr__timeouts
type azurerm_ip_group_cidr

val azurerm_ip_group_cidr :
  ?id:string prop ->
  ?timeouts:azurerm_ip_group_cidr__timeouts ->
  cidr:string prop ->
  ip_group_id:string prop ->
  string ->
  unit
