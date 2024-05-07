(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_subnets = {
  allow_public_ip : string prop;  (** allow_public_ip *)
  lab_subnet_name : string prop;  (** lab_subnet_name *)
  resource_id : string prop;  (** resource_id *)
}

type subnet_overrides = {
  lab_subnet_name : string prop;  (** lab_subnet_name *)
  resource_id : string prop;  (** resource_id *)
  use_in_vm_creation_permission : string prop;
      (** use_in_vm_creation_permission *)
  use_public_ip_address_permission : string prop;
      (** use_public_ip_address_permission *)
  virtual_network_pool_name : string prop;
      (** virtual_network_pool_name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dev_test_virtual_network

val azurerm_dev_test_virtual_network :
  ?id:string prop ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dev_test_virtual_network

val yojson_of_azurerm_dev_test_virtual_network :
  azurerm_dev_test_virtual_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_subnets : allowed_subnets list prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet_overrides : subnet_overrides list prop;
  unique_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
