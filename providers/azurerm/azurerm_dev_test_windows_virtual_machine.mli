(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type gallery_image_reference

val gallery_image_reference :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  gallery_image_reference

type inbound_nat_rule

val inbound_nat_rule :
  backend_port:float prop ->
  protocol:string prop ->
  unit ->
  inbound_nat_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_test_windows_virtual_machine

val azurerm_dev_test_windows_virtual_machine :
  ?allow_claim:bool prop ->
  ?disallow_public_ip_address:bool prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  lab_subnet_name:string prop ->
  lab_virtual_network_id:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  size:string prop ->
  storage_type:string prop ->
  username:string prop ->
  gallery_image_reference:gallery_image_reference list ->
  inbound_nat_rule:inbound_nat_rule list ->
  unit ->
  azurerm_dev_test_windows_virtual_machine

val yojson_of_azurerm_dev_test_windows_virtual_machine :
  azurerm_dev_test_windows_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_claim:bool prop ->
  ?disallow_public_ip_address:bool prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  lab_subnet_name:string prop ->
  lab_virtual_network_id:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  size:string prop ->
  storage_type:string prop ->
  username:string prop ->
  gallery_image_reference:gallery_image_reference list ->
  inbound_nat_rule:inbound_nat_rule list ->
  string ->
  t

val make :
  ?allow_claim:bool prop ->
  ?disallow_public_ip_address:bool prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  lab_subnet_name:string prop ->
  lab_virtual_network_id:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  size:string prop ->
  storage_type:string prop ->
  username:string prop ->
  gallery_image_reference:gallery_image_reference list ->
  inbound_nat_rule:inbound_nat_rule list ->
  string ->
  t Tf_core.resource
