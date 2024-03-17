(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_lab__timeouts
type azurerm_dev_test_lab

val azurerm_dev_test_lab :
  ?id:string ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_lab__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
