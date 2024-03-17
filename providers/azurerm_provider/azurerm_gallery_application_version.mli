(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_gallery_application_version__manage_action
type azurerm_gallery_application_version__source
type azurerm_gallery_application_version__target_region
type azurerm_gallery_application_version__timeouts
type azurerm_gallery_application_version

val azurerm_gallery_application_version :
  ?config_file:string ->
  ?enable_health_check:bool ->
  ?end_of_life_date:string ->
  ?exclude_from_latest:bool ->
  ?id:string ->
  ?package_file:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_gallery_application_version__timeouts ->
  gallery_application_id:string ->
  location:string ->
  name:string ->
  manage_action:
    azurerm_gallery_application_version__manage_action list ->
  source:azurerm_gallery_application_version__source list ->
  target_region:
    azurerm_gallery_application_version__target_region list ->
  string ->
  unit
