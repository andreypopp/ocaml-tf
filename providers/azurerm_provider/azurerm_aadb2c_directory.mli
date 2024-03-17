(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_aadb2c_directory__timeouts
type azurerm_aadb2c_directory

type t = private {
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

val azurerm_aadb2c_directory :
  ?country_code:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_aadb2c_directory__timeouts ->
  data_residency_location:string prop ->
  domain_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
