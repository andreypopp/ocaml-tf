(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_a_record__timeouts
type azurerm_private_dns_a_record

val azurerm_private_dns_a_record :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_a_record__timeouts ->
  name:string prop ->
  records:string prop list ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  unit
