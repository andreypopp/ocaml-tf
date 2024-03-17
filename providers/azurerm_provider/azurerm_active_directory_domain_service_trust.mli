(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service_trust__timeouts
type azurerm_active_directory_domain_service_trust

type t = private {
  domain_service_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string list prop;
  trusted_domain_fqdn : string prop;
}

val azurerm_active_directory_domain_service_trust :
  ?id:string prop ->
  ?timeouts:azurerm_active_directory_domain_service_trust__timeouts ->
  domain_service_id:string prop ->
  name:string prop ->
  password:string prop ->
  trusted_domain_dns_ips:string prop list ->
  trusted_domain_fqdn:string prop ->
  string ->
  t
