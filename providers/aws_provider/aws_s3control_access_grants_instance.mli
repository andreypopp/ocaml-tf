(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grants_instance

type t = private {
  access_grants_instance_arn : string prop;
  access_grants_instance_id : string prop;
  account_id : string prop;
  id : string prop;
  identity_center_application_arn : string prop;
  identity_center_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_s3control_access_grants_instance :
  ?account_id:string prop ->
  ?identity_center_arn:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t
