(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_configuration__install_patches__linux
type azurerm_maintenance_configuration__install_patches__windows
type azurerm_maintenance_configuration__install_patches
type azurerm_maintenance_configuration__timeouts
type azurerm_maintenance_configuration__window
type azurerm_maintenance_configuration

val azurerm_maintenance_configuration :
  ?id:string ->
  ?in_guest_user_patch_mode:string ->
  ?properties:(string * string) list ->
  ?tags:(string * string) list ->
  ?visibility:string ->
  ?timeouts:azurerm_maintenance_configuration__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scope:string ->
  install_patches:
    azurerm_maintenance_configuration__install_patches list ->
  window:azurerm_maintenance_configuration__window list ->
  string ->
  unit
