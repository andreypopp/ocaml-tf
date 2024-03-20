(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_active_directory_domain_service_trust

val azurerm_active_directory_domain_service_trust :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  name:string prop ->
  password:string prop ->
  trusted_domain_dns_ips:string prop list ->
  trusted_domain_fqdn:string prop ->
  unit ->
  azurerm_active_directory_domain_service_trust

val yojson_of_azurerm_active_directory_domain_service_trust :
  azurerm_active_directory_domain_service_trust -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_service_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string list prop;
  trusted_domain_fqdn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  name:string prop ->
  password:string prop ->
  trusted_domain_dns_ips:string prop list ->
  trusted_domain_fqdn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  name:string prop ->
  password:string prop ->
  trusted_domain_dns_ips:string prop list ->
  trusted_domain_fqdn:string prop ->
  string ->
  t Tf_core.resource
