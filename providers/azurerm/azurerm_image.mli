(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_disk

val data_disk :
  ?blob_uri:string prop ->
  ?caching:string prop ->
  ?lun:float prop ->
  ?managed_disk_id:string prop ->
  ?size_gb:float prop ->
  unit ->
  data_disk

type os_disk

val os_disk :
  ?blob_uri:string prop ->
  ?caching:string prop ->
  ?disk_encryption_set_id:string prop ->
  ?managed_disk_id:string prop ->
  ?os_state:string prop ->
  ?os_type:string prop ->
  ?size_gb:float prop ->
  unit ->
  os_disk

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_image

val azurerm_image :
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?source_virtual_machine_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_resilient:bool prop ->
  ?data_disk:data_disk list ->
  ?os_disk:os_disk list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_image

val yojson_of_azurerm_image : azurerm_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  hyper_v_generation : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  zone_resilient : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?source_virtual_machine_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_resilient:bool prop ->
  ?data_disk:data_disk list ->
  ?os_disk:os_disk list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?source_virtual_machine_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_resilient:bool prop ->
  ?data_disk:data_disk list ->
  ?os_disk:os_disk list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
