(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_a_record__timeouts
type azurerm_dns_a_record

val azurerm_dns_a_record :
  ?id:string prop ->
  ?records:string prop list ->
  ?tags:(string * string prop) list ->
  ?target_resource_id:string prop ->
  ?timeouts:azurerm_dns_a_record__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  unit
