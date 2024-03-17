(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_custom_event__pipeline
type azurerm_data_factory_trigger_custom_event__timeouts
type azurerm_data_factory_trigger_custom_event

type t = private {
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

val azurerm_data_factory_trigger_custom_event :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?subject_begins_with:string prop ->
  ?subject_ends_with:string prop ->
  ?timeouts:azurerm_data_factory_trigger_custom_event__timeouts ->
  data_factory_id:string prop ->
  eventgrid_topic_id:string prop ->
  events:string prop list ->
  name:string prop ->
  pipeline:azurerm_data_factory_trigger_custom_event__pipeline list ->
  string ->
  t
