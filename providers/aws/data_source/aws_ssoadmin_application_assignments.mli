(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_assignments

val application_assignments : unit -> application_assignments

type aws_ssoadmin_application_assignments

val aws_ssoadmin_application_assignments :
  application_arn:string prop ->
  application_assignments:application_assignments list ->
  unit ->
  aws_ssoadmin_application_assignments

val yojson_of_aws_ssoadmin_application_assignments :
  aws_ssoadmin_application_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private { application_arn : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  application_arn:string prop ->
  application_assignments:application_assignments list ->
  string ->
  t

val make :
  application_arn:string prop ->
  application_assignments:application_assignments list ->
  string ->
  t Tf_core.resource
