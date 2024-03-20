(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pipeline

val pipeline :
  ?parameters:(string * string prop) list ->
  name:string prop ->
  unit ->
  pipeline

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_trigger_blob_event

val azurerm_data_factory_trigger_blob_event :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?blob_path_begins_with:string prop ->
  ?blob_path_ends_with:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_empty_blobs:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  events:string prop list ->
  name:string prop ->
  storage_account_id:string prop ->
  pipeline:pipeline list ->
  unit ->
  azurerm_data_factory_trigger_blob_event

val yojson_of_azurerm_data_factory_trigger_blob_event :
  azurerm_data_factory_trigger_blob_event -> json

(** RESOURCE REGISTRATION *)

type t = private {
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  blob_path_begins_with : string prop;
  blob_path_ends_with : string prop;
  data_factory_id : string prop;
  description : string prop;
  events : string list prop;
  id : string prop;
  ignore_empty_blobs : bool prop;
  name : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?blob_path_begins_with:string prop ->
  ?blob_path_ends_with:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_empty_blobs:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  events:string prop list ->
  name:string prop ->
  storage_account_id:string prop ->
  pipeline:pipeline list ->
  string ->
  t

val make :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?blob_path_begins_with:string prop ->
  ?blob_path_ends_with:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_empty_blobs:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  events:string prop list ->
  name:string prop ->
  storage_account_id:string prop ->
  pipeline:pipeline list ->
  string ->
  t Tf_core.resource
