(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_insights_report_config__csv_options

type google_storage_insights_report_config__frequency_options__end_date

type google_storage_insights_report_config__frequency_options__start_date

type google_storage_insights_report_config__frequency_options

type google_storage_insights_report_config__object_metadata_report_options__storage_destination_options

type google_storage_insights_report_config__object_metadata_report_options__storage_filters

type google_storage_insights_report_config__object_metadata_report_options

type google_storage_insights_report_config__timeouts
type google_storage_insights_report_config

val google_storage_insights_report_config :
  ?display_name:string ->
  ?timeouts:google_storage_insights_report_config__timeouts ->
  location:string ->
  csv_options:google_storage_insights_report_config__csv_options list ->
  frequency_options:
    google_storage_insights_report_config__frequency_options list ->
  object_metadata_report_options:
    google_storage_insights_report_config__object_metadata_report_options
    list ->
  string ->
  unit
