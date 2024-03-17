(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dns_cname_record__timeouts
type azurerm_dns_cname_record

type t = private {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  record : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
  ttl : float prop;
  zone_name : string prop;
}

val azurerm_dns_cname_record :
  ?id:string prop ->
  ?record:string prop ->
  ?tags:(string * string prop) list ->
  ?target_resource_id:string prop ->
  ?timeouts:azurerm_dns_cname_record__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t
