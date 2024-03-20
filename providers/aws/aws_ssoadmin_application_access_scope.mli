(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssoadmin_application_access_scope

val aws_ssoadmin_application_access_scope :
  ?authorized_targets:string prop list ->
  application_arn:string prop ->
  scope:string prop ->
  unit ->
  aws_ssoadmin_application_access_scope

val yojson_of_aws_ssoadmin_application_access_scope :
  aws_ssoadmin_application_access_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_arn : string prop;
  authorized_targets : string list prop;
  id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorized_targets:string prop list ->
  application_arn:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?authorized_targets:string prop list ->
  application_arn:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
