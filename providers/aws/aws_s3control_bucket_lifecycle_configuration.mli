(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule__abort_incomplete_multipart_upload

val rule__abort_incomplete_multipart_upload :
  days_after_initiation:float prop ->
  unit ->
  rule__abort_incomplete_multipart_upload

type rule__expiration

val rule__expiration :
  ?date:string prop ->
  ?days:float prop ->
  ?expired_object_delete_marker:bool prop ->
  unit ->
  rule__expiration

type rule__filter

val rule__filter :
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  rule__filter

type rule

val rule :
  ?status:string prop ->
  id:string prop ->
  abort_incomplete_multipart_upload:
    rule__abort_incomplete_multipart_upload list ->
  expiration:rule__expiration list ->
  filter:rule__filter list ->
  unit ->
  rule

type aws_s3control_bucket_lifecycle_configuration

val aws_s3control_bucket_lifecycle_configuration :
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  unit ->
  aws_s3control_bucket_lifecycle_configuration

val yojson_of_aws_s3control_bucket_lifecycle_configuration :
  aws_s3control_bucket_lifecycle_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { bucket : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t
