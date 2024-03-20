(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_assignments

val application_assignments : unit -> application_assignments

type aws_ssoadmin_principal_application_assignments

val aws_ssoadmin_principal_application_assignments :
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  application_assignments:application_assignments list ->
  unit ->
  aws_ssoadmin_principal_application_assignments

val yojson_of_aws_ssoadmin_principal_application_assignments :
  aws_ssoadmin_principal_application_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  application_assignments:application_assignments list ->
  string ->
  t

val make :
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  application_assignments:application_assignments list ->
  string ->
  t Tf_core.resource
