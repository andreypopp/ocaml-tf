(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_workbook_template__galleries
type azurerm_application_insights_workbook_template__timeouts
type azurerm_application_insights_workbook_template

val azurerm_application_insights_workbook_template :
  ?author:string prop ->
  ?id:string prop ->
  ?localized:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_application_insights_workbook_template__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  template_data:string prop ->
  galleries:
    azurerm_application_insights_workbook_template__galleries list ->
  string ->
  unit
