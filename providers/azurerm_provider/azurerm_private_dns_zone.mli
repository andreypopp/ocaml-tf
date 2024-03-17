(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_zone__soa_record
type azurerm_private_dns_zone__timeouts
type azurerm_private_dns_zone

val azurerm_private_dns_zone :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_zone__timeouts ->
  name:string ->
  resource_group_name:string ->
  soa_record:azurerm_private_dns_zone__soa_record list ->
  string ->
  unit
