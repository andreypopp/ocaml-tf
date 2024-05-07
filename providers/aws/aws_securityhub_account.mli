(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_securityhub_account

val aws_securityhub_account :
  ?auto_enable_controls:bool prop ->
  ?control_finding_generator:string prop ->
  ?enable_default_standards:bool prop ->
  ?id:string prop ->
  unit ->
  aws_securityhub_account

val yojson_of_aws_securityhub_account :
  aws_securityhub_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  auto_enable_controls : bool prop;
  control_finding_generator : string prop;
  enable_default_standards : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_enable_controls:bool prop ->
  ?control_finding_generator:string prop ->
  ?enable_default_standards:bool prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?auto_enable_controls:bool prop ->
  ?control_finding_generator:string prop ->
  ?enable_default_standards:bool prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
