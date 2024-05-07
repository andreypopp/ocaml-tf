(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipv4_firewall_rule

val ipv4_firewall_rule :
  name:string prop ->
  range_end:string prop ->
  range_start:string prop ->
  unit ->
  ipv4_firewall_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_analysis_services_server

val azurerm_analysis_services_server :
  ?admin_users:string prop list ->
  ?backup_blob_container_uri:string prop ->
  ?enable_power_bi_service:bool prop ->
  ?id:string prop ->
  ?querypool_connection_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  ipv4_firewall_rule:ipv4_firewall_rule list ->
  unit ->
  azurerm_analysis_services_server

val yojson_of_azurerm_analysis_services_server :
  azurerm_analysis_services_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_users : string list prop;
  backup_blob_container_uri : string prop;
  enable_power_bi_service : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  querypool_connection_mode : string prop;
  resource_group_name : string prop;
  server_full_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_users:string prop list ->
  ?backup_blob_container_uri:string prop ->
  ?enable_power_bi_service:bool prop ->
  ?id:string prop ->
  ?querypool_connection_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  ipv4_firewall_rule:ipv4_firewall_rule list ->
  string ->
  t

val make :
  ?admin_users:string prop list ->
  ?backup_blob_container_uri:string prop ->
  ?enable_power_bi_service:bool prop ->
  ?id:string prop ->
  ?querypool_connection_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  ipv4_firewall_rule:ipv4_firewall_rule list ->
  string ->
  t Tf_core.resource
