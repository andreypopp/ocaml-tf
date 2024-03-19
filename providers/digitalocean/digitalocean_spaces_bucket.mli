(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cors_rule

val cors_rule :
  ?allowed_headers:string prop list ->
  ?max_age_seconds:float prop ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  unit ->
  cors_rule

type lifecycle_rule__expiration

val lifecycle_rule__expiration :
  ?date:string prop ->
  ?days:float prop ->
  ?expired_object_delete_marker:bool prop ->
  unit ->
  lifecycle_rule__expiration

type lifecycle_rule__noncurrent_version_expiration

val lifecycle_rule__noncurrent_version_expiration :
  ?days:float prop ->
  unit ->
  lifecycle_rule__noncurrent_version_expiration

type lifecycle_rule

val lifecycle_rule :
  ?abort_incomplete_multipart_upload_days:float prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  enabled:bool prop ->
  expiration:lifecycle_rule__expiration list ->
  noncurrent_version_expiration:
    lifecycle_rule__noncurrent_version_expiration list ->
  unit ->
  lifecycle_rule

type versioning

val versioning : ?enabled:bool prop -> unit -> versioning

type digitalocean_spaces_bucket

val digitalocean_spaces_bucket :
  ?acl:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  cors_rule:cors_rule list ->
  lifecycle_rule:lifecycle_rule list ->
  versioning:versioning list ->
  unit ->
  digitalocean_spaces_bucket

val yojson_of_digitalocean_spaces_bucket :
  digitalocean_spaces_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acl : string prop;
  bucket_domain_name : string prop;
  endpoint : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?acl:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  cors_rule:cors_rule list ->
  lifecycle_rule:lifecycle_rule list ->
  versioning:versioning list ->
  string ->
  t
