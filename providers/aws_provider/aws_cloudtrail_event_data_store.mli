(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudtrail_event_data_store__advanced_event_selector__field_selector

type aws_cloudtrail_event_data_store__advanced_event_selector
type aws_cloudtrail_event_data_store__timeouts
type aws_cloudtrail_event_data_store

val aws_cloudtrail_event_data_store :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?multi_region_enabled:bool prop ->
  ?organization_enabled:bool prop ->
  ?retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection_enabled:bool prop ->
  ?timeouts:aws_cloudtrail_event_data_store__timeouts ->
  name:string prop ->
  advanced_event_selector:
    aws_cloudtrail_event_data_store__advanced_event_selector list ->
  string ->
  unit
