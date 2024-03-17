(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_configuration__install_patches__linux
type azurerm_maintenance_configuration__install_patches__windows
type azurerm_maintenance_configuration__install_patches
type azurerm_maintenance_configuration__timeouts
type azurerm_maintenance_configuration__window
type azurerm_maintenance_configuration

val azurerm_maintenance_configuration :
  ?id:string prop ->
  ?in_guest_user_patch_mode:string prop ->
  ?properties:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?visibility:string prop ->
  ?timeouts:azurerm_maintenance_configuration__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope:string prop ->
  install_patches:
    azurerm_maintenance_configuration__install_patches list ->
  window:azurerm_maintenance_configuration__window list ->
  string ->
  unit
