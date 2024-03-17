(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket__cors_rule
type digitalocean_spaces_bucket__lifecycle_rule__expiration

type digitalocean_spaces_bucket__lifecycle_rule__noncurrent_version_expiration

type digitalocean_spaces_bucket__lifecycle_rule
type digitalocean_spaces_bucket__versioning
type digitalocean_spaces_bucket

val digitalocean_spaces_bucket :
  ?acl:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  cors_rule:digitalocean_spaces_bucket__cors_rule list ->
  lifecycle_rule:digitalocean_spaces_bucket__lifecycle_rule list ->
  versioning:digitalocean_spaces_bucket__versioning list ->
  string ->
  unit
