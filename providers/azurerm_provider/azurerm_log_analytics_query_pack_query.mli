(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_query_pack_query__timeouts
type azurerm_log_analytics_query_pack_query

val azurerm_log_analytics_query_pack_query :
  ?additional_settings_json:string ->
  ?categories:string list ->
  ?description:string ->
  ?resource_types:string list ->
  ?solutions:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_query_pack_query__timeouts ->
  body:string ->
  display_name:string ->
  query_pack_id:string ->
  string ->
  unit
