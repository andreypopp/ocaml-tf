(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_metadata__author
type azurerm_sentinel_metadata__category
type azurerm_sentinel_metadata__source
type azurerm_sentinel_metadata__support
type azurerm_sentinel_metadata__timeouts
type azurerm_sentinel_metadata

val azurerm_sentinel_metadata :
  ?content_schema_version:string ->
  ?custom_version:string ->
  ?dependency:string ->
  ?first_publish_date:string ->
  ?icon_id:string ->
  ?id:string ->
  ?last_publish_date:string ->
  ?preview_images:string list ->
  ?preview_images_dark:string list ->
  ?providers:string list ->
  ?threat_analysis_tactics:string list ->
  ?threat_analysis_techniques:string list ->
  ?version:string ->
  ?timeouts:azurerm_sentinel_metadata__timeouts ->
  content_id:string ->
  kind:string ->
  name:string ->
  parent_id:string ->
  workspace_id:string ->
  author:azurerm_sentinel_metadata__author list ->
  category:azurerm_sentinel_metadata__category list ->
  source:azurerm_sentinel_metadata__source list ->
  support:azurerm_sentinel_metadata__support list ->
  string ->
  unit
