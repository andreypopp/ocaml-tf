(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
