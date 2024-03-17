(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_lab__timeouts
type azurerm_dev_test_lab

val azurerm_dev_test_lab :
  ?id:string prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_lab__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
