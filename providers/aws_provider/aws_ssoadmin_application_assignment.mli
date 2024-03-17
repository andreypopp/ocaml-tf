(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application_assignment

type t = private {
  application_arn : string prop;
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

val aws_ssoadmin_application_assignment :
  application_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  string ->
  t
