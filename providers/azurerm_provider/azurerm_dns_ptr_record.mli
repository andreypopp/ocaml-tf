(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_ptr_record__timeouts
type azurerm_dns_ptr_record

val azurerm_dns_ptr_record :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dns_ptr_record__timeouts ->
  name:string ->
  records:string list ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  string ->
  unit
