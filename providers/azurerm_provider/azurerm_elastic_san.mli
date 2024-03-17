(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_elastic_san__sku
type azurerm_elastic_san__timeouts
type azurerm_elastic_san

val azurerm_elastic_san :
  ?extended_size_in_tib:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_elastic_san__timeouts ->
  base_size_in_tib:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:azurerm_elastic_san__sku list ->
  string ->
  unit
