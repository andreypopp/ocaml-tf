(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logs__filtering_tag = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type logs

val logs : unit -> logs

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_elastic_cloud_elasticsearch

val azurerm_elastic_cloud_elasticsearch :
  ?id:string prop ->
  ?logs:logs list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_elastic_cloud_elasticsearch

val yojson_of_azurerm_elastic_cloud_elasticsearch :
  azurerm_elastic_cloud_elasticsearch -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  ?logs:logs list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?logs:logs list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
