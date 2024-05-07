(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logs__filtering_tag

val logs__filtering_tag :
  action:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  logs__filtering_tag

type logs

val logs :
  ?send_activity_logs:bool prop ->
  ?send_azuread_logs:bool prop ->
  ?send_subscription_logs:bool prop ->
  ?filtering_tag:logs__filtering_tag list ->
  unit ->
  logs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_elastic_cloud_elasticsearch

val azurerm_elastic_cloud_elasticsearch :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?logs:logs list ->
  ?timeouts:timeouts ->
  elastic_cloud_email_address:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_elastic_cloud_elasticsearch

val yojson_of_azurerm_elastic_cloud_elasticsearch :
  azurerm_elastic_cloud_elasticsearch -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  elastic_cloud_deployment_id : string prop;
  elastic_cloud_email_address : string prop;
  elastic_cloud_sso_default_url : string prop;
  elastic_cloud_user_id : string prop;
  elasticsearch_service_url : string prop;
  id : string prop;
  kibana_service_url : string prop;
  kibana_sso_uri : string prop;
  location : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?logs:logs list ->
  ?timeouts:timeouts ->
  elastic_cloud_email_address:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?logs:logs list ->
  ?timeouts:timeouts ->
  elastic_cloud_email_address:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
