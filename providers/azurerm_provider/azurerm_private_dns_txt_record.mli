(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_txt_record__record
type azurerm_private_dns_txt_record__timeouts
type azurerm_private_dns_txt_record

type t = private {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

val azurerm_private_dns_txt_record :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_txt_record__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:azurerm_private_dns_txt_record__record list ->
  string ->
  t
