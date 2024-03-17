(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_metadata__author
type azurerm_sentinel_metadata__category
type azurerm_sentinel_metadata__source
type azurerm_sentinel_metadata__support
type azurerm_sentinel_metadata__timeouts
type azurerm_sentinel_metadata

val azurerm_sentinel_metadata :
  ?content_schema_version:string prop ->
  ?custom_version:string prop ->
  ?dependency:string prop ->
  ?first_publish_date:string prop ->
  ?icon_id:string prop ->
  ?id:string prop ->
  ?last_publish_date:string prop ->
  ?preview_images:string prop list ->
  ?preview_images_dark:string prop list ->
  ?providers:string prop list ->
  ?threat_analysis_tactics:string prop list ->
  ?threat_analysis_techniques:string prop list ->
  ?version:string prop ->
  ?timeouts:azurerm_sentinel_metadata__timeouts ->
  content_id:string prop ->
  kind:string prop ->
  name:string prop ->
  parent_id:string prop ->
  workspace_id:string prop ->
  author:azurerm_sentinel_metadata__author list ->
  category:azurerm_sentinel_metadata__category list ->
  source:azurerm_sentinel_metadata__source list ->
  support:azurerm_sentinel_metadata__support list ->
  string ->
  unit
