(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_zone__soa_record
type azurerm_dns_zone__timeouts
type azurerm_dns_zone

val azurerm_dns_zone :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dns_zone__timeouts ->
  name:string ->
  resource_group_name:string ->
  soa_record:azurerm_dns_zone__soa_record list ->
  string ->
  unit
