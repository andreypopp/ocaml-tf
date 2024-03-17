(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_standard_web_test__request__header
type azurerm_application_insights_standard_web_test__request
type azurerm_application_insights_standard_web_test__timeouts

type azurerm_application_insights_standard_web_test__validation_rules__content

type azurerm_application_insights_standard_web_test__validation_rules
type azurerm_application_insights_standard_web_test

val azurerm_application_insights_standard_web_test :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:azurerm_application_insights_standard_web_test__timeouts ->
  application_insights_id:string prop ->
  geo_locations:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  request:
    azurerm_application_insights_standard_web_test__request list ->
  validation_rules:
    azurerm_application_insights_standard_web_test__validation_rules
    list ->
  string ->
  unit
