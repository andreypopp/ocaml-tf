(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_aaaa_record__timeouts
type azurerm_dns_aaaa_record

val azurerm_dns_aaaa_record :
  ?id:string ->
  ?records:string list ->
  ?tags:(string * string) list ->
  ?target_resource_id:string ->
  ?timeouts:azurerm_dns_aaaa_record__timeouts ->
  name:string ->
  resource_group_name:string ->
  ttl:float ->
  zone_name:string ->
  string ->
  unit
