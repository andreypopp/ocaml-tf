(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_aadb2c_directory

val azurerm_aadb2c_directory :
  ?country_code:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_residency_location:string prop ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_aadb2c_directory

val yojson_of_azurerm_aadb2c_directory :
  azurerm_aadb2c_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_type : string prop;
  country_code : string prop;
  data_residency_location : string prop;
  display_name : string prop;
  domain_name : string prop;
  effective_start_date : string prop;
  id : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?country_code:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_residency_location:string prop ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?country_code:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_residency_location:string prop ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
