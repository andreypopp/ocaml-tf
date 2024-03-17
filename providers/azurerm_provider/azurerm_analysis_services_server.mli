(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_analysis_services_server__ipv4_firewall_rule
type azurerm_analysis_services_server__timeouts
type azurerm_analysis_services_server

val azurerm_analysis_services_server :
  ?admin_users:string list ->
  ?backup_blob_container_uri:string ->
  ?enable_power_bi_service:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_analysis_services_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  ipv4_firewall_rule:
    azurerm_analysis_services_server__ipv4_firewall_rule list ->
  string ->
  unit
