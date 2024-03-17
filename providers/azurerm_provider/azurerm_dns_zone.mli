(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_zone__soa_record
type azurerm_dns_zone__timeouts
type azurerm_dns_zone

val azurerm_dns_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dns_zone__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  soa_record:azurerm_dns_zone__soa_record list ->
  string ->
  unit
