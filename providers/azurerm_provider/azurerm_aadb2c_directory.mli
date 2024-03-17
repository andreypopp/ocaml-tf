(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_aadb2c_directory__timeouts
type azurerm_aadb2c_directory

val azurerm_aadb2c_directory :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_aadb2c_directory__timeouts ->
  data_residency_location:string ->
  domain_name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
