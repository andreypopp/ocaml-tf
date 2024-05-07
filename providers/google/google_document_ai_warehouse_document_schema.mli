(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type property_definitions__date_time_type_options

val property_definitions__date_time_type_options :
  unit -> property_definitions__date_time_type_options

type property_definitions__enum_type_options

val property_definitions__enum_type_options :
  ?validation_check_disabled:bool prop ->
  possible_values:string prop list ->
  unit ->
  property_definitions__enum_type_options

type property_definitions__float_type_options

val property_definitions__float_type_options :
  unit -> property_definitions__float_type_options

type property_definitions__integer_type_options

val property_definitions__integer_type_options :
  unit -> property_definitions__integer_type_options

type property_definitions__map_type_options

val property_definitions__map_type_options :
  unit -> property_definitions__map_type_options

type property_definitions__property_type_options__property_definitions__date_time_type_options

val property_definitions__property_type_options__property_definitions__date_time_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__date_time_type_options

type property_definitions__property_type_options__property_definitions__enum_type_options

val property_definitions__property_type_options__property_definitions__enum_type_options :
  ?validation_check_disabled:bool prop ->
  possible_values:string prop list ->
  unit ->
  property_definitions__property_type_options__property_definitions__enum_type_options

type property_definitions__property_type_options__property_definitions__float_type_options

val property_definitions__property_type_options__property_definitions__float_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__float_type_options

type property_definitions__property_type_options__property_definitions__integer_type_options

val property_definitions__property_type_options__property_definitions__integer_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__integer_type_options

type property_definitions__property_type_options__property_definitions__map_type_options

val property_definitions__property_type_options__property_definitions__map_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__map_type_options

type property_definitions__property_type_options__property_definitions__schema_sources

val property_definitions__property_type_options__property_definitions__schema_sources :
  ?name:string prop ->
  ?processor_type:string prop ->
  unit ->
  property_definitions__property_type_options__property_definitions__schema_sources

type property_definitions__property_type_options__property_definitions__text_type_options

val property_definitions__property_type_options__property_definitions__text_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__text_type_options

type property_definitions__property_type_options__property_definitions__timestamp_type_options

val property_definitions__property_type_options__property_definitions__timestamp_type_options :
  unit ->
  property_definitions__property_type_options__property_definitions__timestamp_type_options

type property_definitions__property_type_options__property_definitions

val property_definitions__property_type_options__property_definitions :
  ?display_name:string prop ->
  ?is_filterable:bool prop ->
  ?is_metadata:bool prop ->
  ?is_repeatable:bool prop ->
  ?is_required:bool prop ->
  ?is_searchable:bool prop ->
  ?retrieval_importance:string prop ->
  ?date_time_type_options:
    property_definitions__property_type_options__property_definitions__date_time_type_options
    list ->
  ?enum_type_options:
    property_definitions__property_type_options__property_definitions__enum_type_options
    list ->
  ?float_type_options:
    property_definitions__property_type_options__property_definitions__float_type_options
    list ->
  ?integer_type_options:
    property_definitions__property_type_options__property_definitions__integer_type_options
    list ->
  ?map_type_options:
    property_definitions__property_type_options__property_definitions__map_type_options
    list ->
  ?schema_sources:
    property_definitions__property_type_options__property_definitions__schema_sources
    list ->
  ?text_type_options:
    property_definitions__property_type_options__property_definitions__text_type_options
    list ->
  ?timestamp_type_options:
    property_definitions__property_type_options__property_definitions__timestamp_type_options
    list ->
  name:string prop ->
  unit ->
  property_definitions__property_type_options__property_definitions

type property_definitions__property_type_options

val property_definitions__property_type_options :
  property_definitions:
    property_definitions__property_type_options__property_definitions
    list ->
  unit ->
  property_definitions__property_type_options

type property_definitions__schema_sources

val property_definitions__schema_sources :
  ?name:string prop ->
  ?processor_type:string prop ->
  unit ->
  property_definitions__schema_sources

type property_definitions__text_type_options

val property_definitions__text_type_options :
  unit -> property_definitions__text_type_options

type property_definitions__timestamp_type_options

val property_definitions__timestamp_type_options :
  unit -> property_definitions__timestamp_type_options

type property_definitions

val property_definitions :
  ?display_name:string prop ->
  ?is_filterable:bool prop ->
  ?is_metadata:bool prop ->
  ?is_repeatable:bool prop ->
  ?is_required:bool prop ->
  ?is_searchable:bool prop ->
  ?retrieval_importance:string prop ->
  ?date_time_type_options:
    property_definitions__date_time_type_options list ->
  ?enum_type_options:property_definitions__enum_type_options list ->
  ?float_type_options:property_definitions__float_type_options list ->
  ?integer_type_options:
    property_definitions__integer_type_options list ->
  ?map_type_options:property_definitions__map_type_options list ->
  ?property_type_options:
    property_definitions__property_type_options list ->
  ?schema_sources:property_definitions__schema_sources list ->
  ?text_type_options:property_definitions__text_type_options list ->
  ?timestamp_type_options:
    property_definitions__timestamp_type_options list ->
  name:string prop ->
  unit ->
  property_definitions

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_document_ai_warehouse_document_schema

val google_document_ai_warehouse_document_schema :
  ?document_is_folder:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  project_number:string prop ->
  property_definitions:property_definitions list ->
  unit ->
  google_document_ai_warehouse_document_schema

val yojson_of_google_document_ai_warehouse_document_schema :
  google_document_ai_warehouse_document_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  document_is_folder : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project_number : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?document_is_folder:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  project_number:string prop ->
  property_definitions:property_definitions list ->
  string ->
  t

val make :
  ?document_is_folder:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  project_number:string prop ->
  property_definitions:property_definitions list ->
  string ->
  t Tf_core.resource
