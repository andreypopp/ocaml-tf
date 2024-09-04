(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_aadb2c_directory

val azurerm_aadb2c_directory :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_aadb2c_directory

val yojson_of_azurerm_aadb2c_directory :
  azurerm_aadb2c_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_type : string prop;
  data_residency_location : string prop;
  domain_name : string prop;
  effective_start_date : string prop;
  id : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
