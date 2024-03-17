(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_linux_virtual_machine__gallery_image_reference
type azurerm_dev_test_linux_virtual_machine__inbound_nat_rule
type azurerm_dev_test_linux_virtual_machine__timeouts
type azurerm_dev_test_linux_virtual_machine

type t = private {
  allow_claim : bool prop;
  disallow_public_ip_address : bool prop;
  fqdn : string prop;
  id : string prop;
  lab_name : string prop;
  lab_subnet_name : string prop;
  lab_virtual_network_id : string prop;
  location : string prop;
  name : string prop;
  notes : string prop;
  password : string prop;
  resource_group_name : string prop;
  size : string prop;
  ssh_key : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
  username : string prop;
}

val azurerm_dev_test_linux_virtual_machine :
  ?allow_claim:bool prop ->
  ?disallow_public_ip_address:bool prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?password:string prop ->
  ?ssh_key:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_linux_virtual_machine__timeouts ->
  lab_name:string prop ->
  lab_subnet_name:string prop ->
  lab_virtual_network_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  size:string prop ->
  storage_type:string prop ->
  username:string prop ->
  gallery_image_reference:
    azurerm_dev_test_linux_virtual_machine__gallery_image_reference
    list ->
  inbound_nat_rule:
    azurerm_dev_test_linux_virtual_machine__inbound_nat_rule list ->
  string ->
  t
