(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_linux_virtual_machine__gallery_image_reference
type azurerm_dev_test_linux_virtual_machine__inbound_nat_rule
type azurerm_dev_test_linux_virtual_machine__timeouts
type azurerm_dev_test_linux_virtual_machine

val azurerm_dev_test_linux_virtual_machine :
  ?allow_claim:bool ->
  ?disallow_public_ip_address:bool ->
  ?id:string ->
  ?notes:string ->
  ?password:string ->
  ?ssh_key:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_linux_virtual_machine__timeouts ->
  lab_name:string ->
  lab_subnet_name:string ->
  lab_virtual_network_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  size:string ->
  storage_type:string ->
  username:string ->
  gallery_image_reference:
    azurerm_dev_test_linux_virtual_machine__gallery_image_reference
    list ->
  inbound_nat_rule:
    azurerm_dev_test_linux_virtual_machine__inbound_nat_rule list ->
  string ->
  unit
