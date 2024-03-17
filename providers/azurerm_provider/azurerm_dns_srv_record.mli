(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_srv_record__record
type azurerm_dns_srv_record__timeouts
type azurerm_dns_srv_record

val azurerm_dns_srv_record :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dns_srv_record__timeouts ->
  name:string ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  record:azurerm_dns_srv_record__record list ->
  string ->
  unit
