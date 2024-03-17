(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_query_pack_query__timeouts
type azurerm_log_analytics_query_pack_query

val azurerm_log_analytics_query_pack_query :
  ?additional_settings_json:string prop ->
  ?categories:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?resource_types:string prop list ->
  ?solutions:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_query_pack_query__timeouts ->
  body:string prop ->
  display_name:string prop ->
  query_pack_id:string prop ->
  string ->
  unit
