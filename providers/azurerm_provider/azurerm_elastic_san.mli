(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_san__sku
type azurerm_elastic_san__timeouts
type azurerm_elastic_san

val azurerm_elastic_san :
  ?extended_size_in_tib:float ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_elastic_san__timeouts ->
  base_size_in_tib:float ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:azurerm_elastic_san__sku list ->
  string ->
  unit
