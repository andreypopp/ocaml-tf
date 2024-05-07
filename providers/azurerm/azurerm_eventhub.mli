(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capture_description__destination

val capture_description__destination :
  archive_name_format:string prop ->
  blob_container_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  unit ->
  capture_description__destination

type capture_description

val capture_description :
  ?interval_in_seconds:float prop ->
  ?size_limit_in_bytes:float prop ->
  ?skip_empty_archives:bool prop ->
  enabled:bool prop ->
  encoding:string prop ->
  destination:capture_description__destination list ->
  unit ->
  capture_description

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_eventhub

val azurerm_eventhub :
  ?id:string prop ->
  ?status:string prop ->
  ?capture_description:capture_description list ->
  ?timeouts:timeouts ->
  message_retention:float prop ->
  name:string prop ->
  namespace_name:string prop ->
  partition_count:float prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventhub

val yojson_of_azurerm_eventhub : azurerm_eventhub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  message_retention : float prop;
  name : string prop;
  namespace_name : string prop;
  partition_count : float prop;
  partition_ids : string list prop;
  resource_group_name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  ?capture_description:capture_description list ->
  ?timeouts:timeouts ->
  message_retention:float prop ->
  name:string prop ->
  namespace_name:string prop ->
  partition_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  ?capture_description:capture_description list ->
  ?timeouts:timeouts ->
  message_retention:float prop ->
  name:string prop ->
  namespace_name:string prop ->
  partition_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
