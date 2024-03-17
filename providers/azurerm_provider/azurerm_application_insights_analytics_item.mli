(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_analytics_item__timeouts
type azurerm_application_insights_analytics_item

val azurerm_application_insights_analytics_item :
  ?function_alias:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_application_insights_analytics_item__timeouts ->
  application_insights_id:string prop ->
  content:string prop ->
  name:string prop ->
  scope:string prop ->
  type_:string prop ->
  string ->
  unit
