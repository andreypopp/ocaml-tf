(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule__abort_incomplete_multipart_upload

val rule__abort_incomplete_multipart_upload :
  ?days_after_initiation:float prop ->
  unit ->
  rule__abort_incomplete_multipart_upload

type rule__expiration

val rule__expiration :
  ?date:string prop ->
  ?days:float prop ->
  ?expired_object_delete_marker:bool prop ->
  unit ->
  rule__expiration

type rule__filter__and

val rule__filter__and :
  ?object_size_greater_than:float prop ->
  ?object_size_less_than:float prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  rule__filter__and

type rule__filter__tag

val rule__filter__tag :
  key:string prop -> value:string prop -> unit -> rule__filter__tag

type rule__filter

val rule__filter :
  ?object_size_greater_than:string prop ->
  ?object_size_less_than:string prop ->
  ?prefix:string prop ->
  and_:rule__filter__and list ->
  tag:rule__filter__tag list ->
  unit ->
  rule__filter

type rule__noncurrent_version_expiration

val rule__noncurrent_version_expiration :
  ?newer_noncurrent_versions:string prop ->
  ?noncurrent_days:float prop ->
  unit ->
  rule__noncurrent_version_expiration

type rule__noncurrent_version_transition

val rule__noncurrent_version_transition :
  ?newer_noncurrent_versions:string prop ->
  ?noncurrent_days:float prop ->
  storage_class:string prop ->
  unit ->
  rule__noncurrent_version_transition

type rule__transition

val rule__transition :
  ?date:string prop ->
  ?days:float prop ->
  storage_class:string prop ->
  unit ->
  rule__transition

type rule

val rule :
  ?prefix:string prop ->
  id:string prop ->
  status:string prop ->
  abort_incomplete_multipart_upload:
    rule__abort_incomplete_multipart_upload list ->
  expiration:rule__expiration list ->
  filter:rule__filter list ->
  noncurrent_version_expiration:
    rule__noncurrent_version_expiration list ->
  noncurrent_version_transition:
    rule__noncurrent_version_transition list ->
  transition:rule__transition list ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_s3_bucket_lifecycle_configuration

val aws_s3_bucket_lifecycle_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  rule:rule list ->
  unit ->
  aws_s3_bucket_lifecycle_configuration

val yojson_of_aws_s3_bucket_lifecycle_configuration :
  aws_s3_bucket_lifecycle_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t
