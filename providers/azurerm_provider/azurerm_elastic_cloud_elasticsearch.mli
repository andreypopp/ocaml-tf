(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_cloud_elasticsearch__logs__filtering_tag
type azurerm_elastic_cloud_elasticsearch__logs
type azurerm_elastic_cloud_elasticsearch__timeouts
type azurerm_elastic_cloud_elasticsearch

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
  unit
