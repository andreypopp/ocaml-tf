(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssoadmin_application_assignment

val aws_ssoadmin_application_assignment :
  application_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  unit ->
  aws_ssoadmin_application_assignment

val yojson_of_aws_ssoadmin_application_assignment :
  aws_ssoadmin_application_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_arn : string prop;
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  application_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  string ->
  t

val make :
  application_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  string ->
  t Tf_core.resource
