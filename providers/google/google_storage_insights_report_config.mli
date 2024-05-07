(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type csv_options

val csv_options :
  ?delimiter:string prop ->
  ?header_required:bool prop ->
  ?record_separator:string prop ->
  unit ->
  csv_options

type frequency_options__end_date

val frequency_options__end_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  frequency_options__end_date

type frequency_options__start_date

val frequency_options__start_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  frequency_options__start_date

type frequency_options

val frequency_options :
  frequency:string prop ->
  end_date:frequency_options__end_date list ->
  start_date:frequency_options__start_date list ->
  unit ->
  frequency_options

type object_metadata_report_options__storage_destination_options

val object_metadata_report_options__storage_destination_options :
  ?destination_path:string prop ->
  bucket:string prop ->
  unit ->
  object_metadata_report_options__storage_destination_options

type object_metadata_report_options__storage_filters

val object_metadata_report_options__storage_filters :
  ?bucket:string prop ->
  unit ->
  object_metadata_report_options__storage_filters

type object_metadata_report_options

val object_metadata_report_options :
  ?storage_filters:
    object_metadata_report_options__storage_filters list ->
  metadata_fields:string prop list ->
  storage_destination_options:
    object_metadata_report_options__storage_destination_options list ->
  unit ->
  object_metadata_report_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_storage_insights_report_config

val google_storage_insights_report_config :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?frequency_options:frequency_options list ->
  ?object_metadata_report_options:object_metadata_report_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  csv_options:csv_options list ->
  unit ->
  google_storage_insights_report_config

val yojson_of_google_storage_insights_report_config :
  google_storage_insights_report_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?frequency_options:frequency_options list ->
  ?object_metadata_report_options:object_metadata_report_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  csv_options:csv_options list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?frequency_options:frequency_options list ->
  ?object_metadata_report_options:object_metadata_report_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  csv_options:csv_options list ->
  string ->
  t Tf_core.resource
