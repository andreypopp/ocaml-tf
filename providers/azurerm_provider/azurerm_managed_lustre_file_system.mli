(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_lustre_file_system__encryption_key
type azurerm_managed_lustre_file_system__hsm_setting
type azurerm_managed_lustre_file_system__identity
type azurerm_managed_lustre_file_system__maintenance_window
type azurerm_managed_lustre_file_system__timeouts
type azurerm_managed_lustre_file_system

type t = private {
  id : string prop;
  location : string prop;
  mgs_address : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_capacity_in_tb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val azurerm_managed_lustre_file_system :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_managed_lustre_file_system__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_capacity_in_tb:float prop ->
  subnet_id:string prop ->
  zones:string prop list ->
  encryption_key:
    azurerm_managed_lustre_file_system__encryption_key list ->
  hsm_setting:azurerm_managed_lustre_file_system__hsm_setting list ->
  identity:azurerm_managed_lustre_file_system__identity list ->
  maintenance_window:
    azurerm_managed_lustre_file_system__maintenance_window list ->
  string ->
  t
