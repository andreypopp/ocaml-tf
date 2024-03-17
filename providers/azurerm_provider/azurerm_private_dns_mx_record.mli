(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_mx_record__record
type azurerm_private_dns_mx_record__timeouts
type azurerm_private_dns_mx_record

val azurerm_private_dns_mx_record :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_mx_record__timeouts ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:azurerm_private_dns_mx_record__record list ->
  string ->
  unit
