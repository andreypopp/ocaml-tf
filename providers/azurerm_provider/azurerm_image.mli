(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_image__data_disk
type azurerm_image__os_disk
type azurerm_image__timeouts
type azurerm_image

val azurerm_image :
  ?hyper_v_generation:string ->
  ?id:string ->
  ?source_virtual_machine_id:string ->
  ?tags:(string * string) list ->
  ?zone_resilient:bool ->
  ?timeouts:azurerm_image__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  data_disk:azurerm_image__data_disk list ->
  os_disk:azurerm_image__os_disk list ->
  string ->
  unit
