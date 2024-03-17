(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_image__data_disk
type azurerm_image__os_disk
type azurerm_image__timeouts
type azurerm_image

type t = private {
  hyper_v_generation : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  zone_resilient : bool prop;
}

val azurerm_image :
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?source_virtual_machine_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_resilient:bool prop ->
  ?timeouts:azurerm_image__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  data_disk:azurerm_image__data_disk list ->
  os_disk:azurerm_image__os_disk list ->
  string ->
  t
