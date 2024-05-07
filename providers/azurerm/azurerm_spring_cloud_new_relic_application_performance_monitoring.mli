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
  ?timeouts:timeouts ->
  app_name:string prop ->
  license_key:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_new_relic_application_performance_monitoring

val yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring :
  azurerm_spring_cloud_new_relic_application_performance_monitoring ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_enabled : bool prop;
  app_name : string prop;
  app_server_port : float prop;
  audit_mode_enabled : bool prop;
  auto_app_naming_enabled : bool prop;
  auto_transaction_naming_enabled : bool prop;
  custom_tracing_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  license_key : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_enabled:bool prop ->
  ?app_server_port:float prop ->
  ?audit_mode_enabled:bool prop ->
  ?auto_app_naming_enabled:bool prop ->
  ?auto_transaction_naming_enabled:bool prop ->
  ?custom_tracing_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  app_name:string prop ->
  license_key:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?agent_enabled:bool prop ->
  ?app_server_port:float prop ->
  ?audit_mode_enabled:bool prop ->
  ?auto_app_naming_enabled:bool prop ->
  ?auto_transaction_naming_enabled:bool prop ->
  ?custom_tracing_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  app_name:string prop ->
  license_key:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource
