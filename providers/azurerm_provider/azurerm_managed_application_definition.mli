(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_application_definition__authorization
type azurerm_managed_application_definition__timeouts
type azurerm_managed_application_definition

val azurerm_managed_application_definition :
  ?create_ui_definition:string ->
  ?description:string ->
  ?id:string ->
  ?main_template:string ->
  ?package_enabled:bool ->
  ?package_file_uri:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_managed_application_definition__timeouts ->
  display_name:string ->
  location:string ->
  lock_level:string ->
  name:string ->
  resource_group_name:string ->
  authorization:
    azurerm_managed_application_definition__authorization list ->
  string ->
  unit
