(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grants_location

type t = private {
  access_grants_location_arn : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  location_scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_s3control_access_grants_location :
  ?account_id:string prop ->
  ?tags:(string * string prop) list ->
  iam_role_arn:string prop ->
  location_scope:string prop ->
  string ->
  t
