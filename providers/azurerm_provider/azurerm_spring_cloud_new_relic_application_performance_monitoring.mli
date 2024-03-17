(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts

type azurerm_spring_cloud_new_relic_application_performance_monitoring

val azurerm_spring_cloud_new_relic_application_performance_monitoring :
  ?agent_enabled:bool ->
  ?app_server_port:float ->
  ?audit_mode_enabled:bool ->
  ?auto_app_naming_enabled:bool ->
  ?auto_transaction_naming_enabled:bool ->
  ?custom_tracing_enabled:bool ->
  ?globally_enabled:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?timeouts:
    azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts ->
  app_name:string ->
  license_key:string ->
  name:string ->
  spring_cloud_service_id:string ->
  string ->
  unit
