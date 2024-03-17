(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_mx_record__record
type azurerm_dns_mx_record__timeouts
type azurerm_dns_mx_record

val azurerm_dns_mx_record :
  ?id:string ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dns_mx_record__timeouts ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  record:azurerm_dns_mx_record__record list ->
  string ->
  unit
