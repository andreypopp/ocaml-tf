(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_environment_v3__cluster_setting
type azurerm_app_service_environment_v3__timeouts

type azurerm_app_service_environment_v3__inbound_network_dependencies = {
  description : string;  (** description *)
  ip_addresses : string list;  (** ip_addresses *)
  ports : string list;  (** ports *)
}

type azurerm_app_service_environment_v3

val azurerm_app_service_environment_v3 :
  ?allow_new_private_endpoint_connections:bool ->
  ?dedicated_host_count:float ->
  ?id:string ->
  ?internal_load_balancing_mode:string ->
  ?remote_debugging_enabled:bool ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_app_service_environment_v3__timeouts ->
  name:string ->
  resource_group_name:string ->
  subnet_id:string ->
  cluster_setting:
    azurerm_app_service_environment_v3__cluster_setting list ->
  string ->
  unit
