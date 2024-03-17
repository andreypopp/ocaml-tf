(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_lab__auto_shutdown
type azurerm_lab_service_lab__connection_setting
type azurerm_lab_service_lab__network
type azurerm_lab_service_lab__roster
type azurerm_lab_service_lab__security
type azurerm_lab_service_lab__timeouts
type azurerm_lab_service_lab__virtual_machine__admin_user
type azurerm_lab_service_lab__virtual_machine__image_reference
type azurerm_lab_service_lab__virtual_machine__non_admin_user
type azurerm_lab_service_lab__virtual_machine__sku
type azurerm_lab_service_lab__virtual_machine
type azurerm_lab_service_lab

val azurerm_lab_service_lab :
  ?description:string ->
  ?lab_plan_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_lab_service_lab__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  title:string ->
  auto_shutdown:azurerm_lab_service_lab__auto_shutdown list ->
  connection_setting:azurerm_lab_service_lab__connection_setting list ->
  network:azurerm_lab_service_lab__network list ->
  roster:azurerm_lab_service_lab__roster list ->
  security:azurerm_lab_service_lab__security list ->
  virtual_machine:azurerm_lab_service_lab__virtual_machine list ->
  string ->
  unit
