(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application_assignment_configuration

type t = private {
  application_arn : string prop;
  assignment_required : bool prop;
  id : string prop;
}

val aws_ssoadmin_application_assignment_configuration :
  application_arn:string prop ->
  assignment_required:bool prop ->
  string ->
  t
