(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type advanced_event_selector__field_selector

val advanced_event_selector__field_selector :
  ?ends_with:string prop list ->
  ?equals:string prop list ->
  ?field:string prop ->
  ?not_ends_with:string prop list ->
  ?not_equals:string prop list ->
  ?not_starts_with:string prop list ->
  ?starts_with:string prop list ->
  unit ->
  advanced_event_selector__field_selector

type advanced_event_selector

val advanced_event_selector :
  ?name:string prop ->
  field_selector:advanced_event_selector__field_selector list ->
  unit ->
  advanced_event_selector

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  name:string prop ->
  advanced_event_selector:advanced_event_selector list ->
  unit ->
  aws_cloudtrail_event_data_store

val yojson_of_aws_cloudtrail_event_data_store :
  aws_cloudtrail_event_data_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  multi_region_enabled : bool prop;
  name : string prop;
  organization_enabled : bool prop;
  retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  termination_protection_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?multi_region_enabled:bool prop ->
  ?organization_enabled:bool prop ->
  ?retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  advanced_event_selector:advanced_event_selector list ->
  string ->
  t
