(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_virtual_network__subnet
type azurerm_dev_test_virtual_network__timeouts
type azurerm_dev_test_virtual_network

type t = private {
  description : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

val azurerm_dev_test_virtual_network :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_virtual_network__timeouts ->
  lab_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet:azurerm_dev_test_virtual_network__subnet list ->
  string ->
  t
