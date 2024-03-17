(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts

type azurerm_spring_cloud_new_relic_application_performance_monitoring

val azurerm_spring_cloud_new_relic_application_performance_monitoring :
  ?agent_enabled:bool prop ->
  ?app_server_port:float prop ->
  ?audit_mode_enabled:bool prop ->
  ?auto_app_naming_enabled:bool prop ->
  ?auto_transaction_naming_enabled:bool prop ->
  ?custom_tracing_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:
    azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts ->
  app_name:string prop ->
  license_key:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  unit
