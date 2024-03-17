(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_workbook__identity
type azurerm_application_insights_workbook__timeouts
type azurerm_application_insights_workbook

val azurerm_application_insights_workbook :
  ?category:string ->
  ?description:string ->
  ?source_id:string ->
  ?storage_container_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_application_insights_workbook__timeouts ->
  data_json:string ->
  display_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_application_insights_workbook__identity list ->
  string ->
  unit
