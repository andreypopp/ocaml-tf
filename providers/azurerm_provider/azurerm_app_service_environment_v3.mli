(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_environment_v3__cluster_setting
type azurerm_app_service_environment_v3__timeouts

type azurerm_app_service_environment_v3__inbound_network_dependencies = {
  description : string prop;  (** description *)
  ip_addresses : string prop list;  (** ip_addresses *)
  ports : string prop list;  (** ports *)
}

type azurerm_app_service_environment_v3

val azurerm_app_service_environment_v3 :
  ?allow_new_private_endpoint_connections:bool prop ->
  ?dedicated_host_count:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_app_service_environment_v3__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  cluster_setting:
    azurerm_app_service_environment_v3__cluster_setting list ->
  string ->
  unit
