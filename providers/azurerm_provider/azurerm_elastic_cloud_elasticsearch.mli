(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_cloud_elasticsearch__logs__filtering_tag
type azurerm_elastic_cloud_elasticsearch__logs
type azurerm_elastic_cloud_elasticsearch__timeouts
type azurerm_elastic_cloud_elasticsearch

val azurerm_elastic_cloud_elasticsearch :
  ?monitoring_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_elastic_cloud_elasticsearch__timeouts ->
  elastic_cloud_email_address:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  logs:azurerm_elastic_cloud_elasticsearch__logs list ->
  string ->
  unit
