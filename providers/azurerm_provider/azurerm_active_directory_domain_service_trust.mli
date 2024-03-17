(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service_trust__timeouts
type azurerm_active_directory_domain_service_trust

val azurerm_active_directory_domain_service_trust :
  ?timeouts:azurerm_active_directory_domain_service_trust__timeouts ->
  domain_service_id:string ->
  name:string ->
  password:string ->
  trusted_domain_dns_ips:string list ->
  trusted_domain_fqdn:string ->
  string ->
  unit
