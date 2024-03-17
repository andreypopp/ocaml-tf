(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_standard_web_test__request__header
type azurerm_application_insights_standard_web_test__request
type azurerm_application_insights_standard_web_test__timeouts

type azurerm_application_insights_standard_web_test__validation_rules__content

type azurerm_application_insights_standard_web_test__validation_rules
type azurerm_application_insights_standard_web_test

val azurerm_application_insights_standard_web_test :
  ?description:string ->
  ?enabled:bool ->
  ?frequency:float ->
  ?retry_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeout:float ->
  ?timeouts:azurerm_application_insights_standard_web_test__timeouts ->
  application_insights_id:string ->
  geo_locations:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  request:
    azurerm_application_insights_standard_web_test__request list ->
  validation_rules:
    azurerm_application_insights_standard_web_test__validation_rules
    list ->
  string ->
  unit
