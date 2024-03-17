(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_cname_record__timeouts
type azurerm_private_dns_cname_record

val azurerm_private_dns_cname_record :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_cname_record__timeouts ->
  name:string prop ->
  record:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  unit
