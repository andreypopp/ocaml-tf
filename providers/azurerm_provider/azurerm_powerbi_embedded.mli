(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_powerbi_embedded__timeouts
type azurerm_powerbi_embedded

val azurerm_powerbi_embedded :
  ?mode:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_powerbi_embedded__timeouts ->
  administrators:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
