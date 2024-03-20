(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule

val rule : object_ownership:string prop -> unit -> rule

type aws_s3_bucket_ownership_controls

val aws_s3_bucket_ownership_controls :
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  unit ->
  aws_s3_bucket_ownership_controls

val yojson_of_aws_s3_bucket_ownership_controls :
  aws_s3_bucket_ownership_controls -> json

(** RESOURCE REGISTRATION *)

type t = private { bucket : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t Tf_core.resource
