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

type azurerm_data_factory_trigger_custom_event

val azurerm_data_factory_trigger_custom_event :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?subject_begins_with:string prop ->
  ?subject_ends_with:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  eventgrid_topic_id:string prop ->
  events:string prop list ->
  name:string prop ->
  pipeline:pipeline list ->
  unit ->
  azurerm_data_factory_trigger_custom_event

val yojson_of_azurerm_data_factory_trigger_custom_event :
  azurerm_data_factory_trigger_custom_event -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  eventgrid_topic_id : string prop;
  events : string list prop;
  id : string prop;
  name : string prop;
  subject_begins_with : string prop;
  subject_ends_with : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?subject_begins_with:string prop ->
  ?subject_ends_with:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  eventgrid_topic_id:string prop ->
  events:string prop list ->
  name:string prop ->
  pipeline:pipeline list ->
  string ->
  t

val make :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?subject_begins_with:string prop ->
  ?subject_ends_with:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  eventgrid_topic_id:string prop ->
  events:string prop list ->
  name:string prop ->
  pipeline:pipeline list ->
  string ->
  t Tf_core.resource
