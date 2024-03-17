(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_virtual_network__subnet
type azurerm_dev_test_virtual_network__timeouts
type azurerm_dev_test_virtual_network

val azurerm_dev_test_virtual_network :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_virtual_network__timeouts ->
  lab_name:string ->
  name:string ->
  resource_group_name:string ->
  subnet:azurerm_dev_test_virtual_network__subnet list ->
  string ->
  unit
