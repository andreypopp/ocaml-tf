(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_access_grants_location

val aws_s3control_access_grants_location :
  ?account_id:string prop ->
  ?tags:(string * string prop) list ->
  iam_role_arn:string prop ->
  location_scope:string prop ->
  unit ->
  aws_s3control_access_grants_location

val yojson_of_aws_s3control_access_grants_location :
  aws_s3control_access_grants_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_grants_location_arn : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  location_scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?tags:(string * string prop) list ->
  iam_role_arn:string prop ->
  location_scope:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?tags:(string * string prop) list ->
  iam_role_arn:string prop ->
  location_scope:string prop ->
  string ->
  t Tf_core.resource
