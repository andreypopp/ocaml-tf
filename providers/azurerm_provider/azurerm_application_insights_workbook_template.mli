(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_workbook_template__galleries
type azurerm_application_insights_workbook_template__timeouts
type azurerm_application_insights_workbook_template

val azurerm_application_insights_workbook_template :
  ?author:string ->
  ?localized:string ->
  ?priority:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_application_insights_workbook_template__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  template_data:string ->
  galleries:
    azurerm_application_insights_workbook_template__galleries list ->
  string ->
  unit
