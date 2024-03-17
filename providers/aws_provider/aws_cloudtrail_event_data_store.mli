(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudtrail_event_data_store__advanced_event_selector__field_selector

type aws_cloudtrail_event_data_store__advanced_event_selector
type aws_cloudtrail_event_data_store__timeouts
type aws_cloudtrail_event_data_store

val aws_cloudtrail_event_data_store :
  ?id:string ->
  ?kms_key_id:string ->
  ?multi_region_enabled:bool ->
  ?organization_enabled:bool ->
  ?retention_period:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?termination_protection_enabled:bool ->
  ?timeouts:aws_cloudtrail_event_data_store__timeouts ->
  name:string ->
  advanced_event_selector:
    aws_cloudtrail_event_data_store__advanced_event_selector list ->
  string ->
  unit
