(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_outbound_endpoint__timeouts
type azurerm_private_dns_resolver_outbound_endpoint

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_private_dns_resolver_outbound_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_resolver_outbound_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
