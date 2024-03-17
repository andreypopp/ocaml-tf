(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_cloud_elasticsearch__logs__filtering_tag
type azurerm_elastic_cloud_elasticsearch__logs
type azurerm_elastic_cloud_elasticsearch__timeouts
type azurerm_elastic_cloud_elasticsearch

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

val azurerm_elastic_cloud_elasticsearch :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_elastic_cloud_elasticsearch__timeouts ->
  elastic_cloud_email_address:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  logs:azurerm_elastic_cloud_elasticsearch__logs list ->
  string ->
  t
