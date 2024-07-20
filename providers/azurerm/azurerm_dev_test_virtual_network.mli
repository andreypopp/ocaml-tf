(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subnet__shared_public_ip_address__allowed_ports

val subnet__shared_public_ip_address__allowed_ports :
  ?backend_port:float prop ->
  ?transport_protocol:string prop ->
  unit ->
  subnet__shared_public_ip_address__allowed_ports

type subnet__shared_public_ip_address

val subnet__shared_public_ip_address :
  ?allowed_ports:subnet__shared_public_ip_address__allowed_ports list ->
  unit ->
  subnet__shared_public_ip_address

type subnet

val subnet :
  ?use_in_virtual_machine_creation:string prop ->
  ?use_public_ip_address:string prop ->
  ?shared_public_ip_address:subnet__shared_public_ip_address list ->
  unit ->
  subnet

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_test_virtual_network

val azurerm_dev_test_virtual_network :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?subnet:subnet list ->
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
  description : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?subnet:subnet list ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?subnet:subnet list ->
  ?timeouts:timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
