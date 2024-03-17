(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_api_key__timeouts
type azurerm_application_insights_api_key

val azurerm_application_insights_api_key :
  ?read_permissions:string list ->
  ?write_permissions:string list ->
  ?timeouts:azurerm_application_insights_api_key__timeouts ->
  application_insights_id:string ->
  name:string ->
  string ->
  unit
