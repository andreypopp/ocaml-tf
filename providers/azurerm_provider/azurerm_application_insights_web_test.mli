(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_web_test__timeouts
type azurerm_application_insights_web_test

val azurerm_application_insights_web_test :
  ?description:string ->
  ?enabled:bool ->
  ?frequency:float ->
  ?retry_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeout:float ->
  ?timeouts:azurerm_application_insights_web_test__timeouts ->
  application_insights_id:string ->
  configuration:string ->
  geo_locations:string list ->
  kind:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
