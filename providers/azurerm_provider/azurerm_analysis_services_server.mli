(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_analysis_services_server__ipv4_firewall_rule
type azurerm_analysis_services_server__timeouts
type azurerm_analysis_services_server

val azurerm_analysis_services_server :
  ?admin_users:string prop list ->
  ?backup_blob_container_uri:string prop ->
  ?enable_power_bi_service:bool prop ->
  ?id:string prop ->
  ?querypool_connection_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_analysis_services_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  ipv4_firewall_rule:
    azurerm_analysis_services_server__ipv4_firewall_rule list ->
  string ->
  unit
