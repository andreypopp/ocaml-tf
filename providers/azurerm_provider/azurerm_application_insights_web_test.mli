(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_web_test__timeouts
type azurerm_application_insights_web_test

val azurerm_application_insights_web_test :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:azurerm_application_insights_web_test__timeouts ->
  application_insights_id:string prop ->
  configuration:string prop ->
  geo_locations:string prop list ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
