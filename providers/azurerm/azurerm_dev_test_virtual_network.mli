(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subnet

val subnet :
  ?use_in_virtual_machine_creation:string prop ->
  ?use_public_ip_address:string prop ->
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
