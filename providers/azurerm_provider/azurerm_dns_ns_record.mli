(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_ns_record__timeouts
type azurerm_dns_ns_record

type t = private {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

val azurerm_dns_ns_record :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dns_ns_record__timeouts ->
  name:string prop ->
  records:string prop list ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t
