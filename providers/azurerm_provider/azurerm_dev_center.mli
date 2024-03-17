(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center__identity
type azurerm_dev_center__timeouts
type azurerm_dev_center

val azurerm_dev_center :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_center__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_dev_center__identity list ->
  string ->
  unit
