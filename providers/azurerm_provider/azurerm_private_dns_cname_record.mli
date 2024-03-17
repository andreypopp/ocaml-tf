(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_cname_record__timeouts
type azurerm_private_dns_cname_record

val azurerm_private_dns_cname_record :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_cname_record__timeouts ->
  name:string ->
  record:string ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  string ->
  unit
