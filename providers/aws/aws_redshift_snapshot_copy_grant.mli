(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_snapshot_copy_grant

val aws_redshift_snapshot_copy_grant :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  snapshot_copy_grant_name:string prop ->
  unit ->
  aws_redshift_snapshot_copy_grant

val yojson_of_aws_redshift_snapshot_copy_grant :
  aws_redshift_snapshot_copy_grant -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  snapshot_copy_grant_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  snapshot_copy_grant_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  snapshot_copy_grant_name:string prop ->
  string ->
  t Tf_core.resource
