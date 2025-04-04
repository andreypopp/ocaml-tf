(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssoadmin_application_assignment_configuration

val aws_ssoadmin_application_assignment_configuration :
  application_arn:string prop ->
  assignment_required:bool prop ->
  unit ->
  aws_ssoadmin_application_assignment_configuration

val yojson_of_aws_ssoadmin_application_assignment_configuration :
  aws_ssoadmin_application_assignment_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_arn : string prop;
  assignment_required : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  application_arn:string prop ->
  assignment_required:bool prop ->
  string ->
  t

val make :
  application_arn:string prop ->
  assignment_required:bool prop ->
  string ->
  t Tf_core.resource
