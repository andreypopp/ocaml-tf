(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_load_test__identity
type azurerm_load_test__timeouts
type azurerm_load_test

val azurerm_load_test :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_load_test__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_load_test__identity list ->
  string ->
  unit
