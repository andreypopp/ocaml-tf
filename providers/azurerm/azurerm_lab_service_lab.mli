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

type t = private {
  description : string prop;
  id : string prop;
  lab_plan_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title : string prop;
}

val azurerm_lab_service_lab :
  ?description:string prop ->
  ?id:string prop ->
  ?lab_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_lab_service_lab__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  title:string prop ->
  auto_shutdown:azurerm_lab_service_lab__auto_shutdown list ->
  connection_setting:azurerm_lab_service_lab__connection_setting list ->
  network:azurerm_lab_service_lab__network list ->
  roster:azurerm_lab_service_lab__roster list ->
  security:azurerm_lab_service_lab__security list ->
  virtual_machine:azurerm_lab_service_lab__virtual_machine list ->
  string ->
  t
