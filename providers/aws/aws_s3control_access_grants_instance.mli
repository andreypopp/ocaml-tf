(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_access_grants_instance

val aws_s3control_access_grants_instance :
  ?account_id:string prop ->
  ?identity_center_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_s3control_access_grants_instance

val yojson_of_aws_s3control_access_grants_instance :
  aws_s3control_access_grants_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_grants_instance_arn : string prop;
  access_grants_instance_id : string prop;
  account_id : string prop;
  id : string prop;
  identity_center_application_arn : string prop;
  identity_center_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?identity_center_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?identity_center_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
