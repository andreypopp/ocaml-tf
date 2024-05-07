(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_assignments

val application_assignments : unit -> application_assignments

type aws_ssoadmin_principal_application_assignments

val aws_ssoadmin_principal_application_assignments :
  ?application_assignments:application_assignments list ->
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  unit ->
  aws_ssoadmin_principal_application_assignments

val yojson_of_aws_ssoadmin_principal_application_assignments :
  aws_ssoadmin_principal_application_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_assignments:application_assignments list ->
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  string ->
  t

val make :
  ?application_assignments:application_assignments list ->
  instance_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  string ->
  t Tf_core.resource
