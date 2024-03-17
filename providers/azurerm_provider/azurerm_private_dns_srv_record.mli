(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_srv_record__record
type azurerm_private_dns_srv_record__timeouts
type azurerm_private_dns_srv_record

val azurerm_private_dns_srv_record :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_srv_record__timeouts ->
  name:string ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  record:azurerm_private_dns_srv_record__record list ->
  string ->
  unit
