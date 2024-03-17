(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_lustre_file_system__encryption_key
type azurerm_managed_lustre_file_system__hsm_setting
type azurerm_managed_lustre_file_system__identity
type azurerm_managed_lustre_file_system__maintenance_window
type azurerm_managed_lustre_file_system__timeouts
type azurerm_managed_lustre_file_system

val azurerm_managed_lustre_file_system :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_managed_lustre_file_system__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  storage_capacity_in_tb:float ->
  subnet_id:string ->
  zones:string list ->
  encryption_key:
    azurerm_managed_lustre_file_system__encryption_key list ->
  hsm_setting:azurerm_managed_lustre_file_system__hsm_setting list ->
  identity:azurerm_managed_lustre_file_system__identity list ->
  maintenance_window:
    azurerm_managed_lustre_file_system__maintenance_window list ->
  string ->
  unit
