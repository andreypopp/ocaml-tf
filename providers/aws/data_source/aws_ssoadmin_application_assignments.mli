(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_assignments

val application_assignments : unit -> application_assignments

type aws_ssoadmin_application_assignments

val aws_ssoadmin_application_assignments :
  ?application_assignments:application_assignments list ->
  application_arn:string prop ->
  unit ->
  aws_ssoadmin_application_assignments

val yojson_of_aws_ssoadmin_application_assignments :
  aws_ssoadmin_application_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_assignments:application_assignments list ->
  application_arn:string prop ->
  string ->
  t

val make :
  ?application_assignments:application_assignments list ->
  application_arn:string prop ->
  string ->
  t Tf_core.resource
