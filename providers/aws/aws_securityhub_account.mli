(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_account

type t = private {
  arn : string prop;
  auto_enable_controls : bool prop;
  control_finding_generator : string prop;
  enable_default_standards : bool prop;
  id : string prop;
}

val aws_securityhub_account :
  ?auto_enable_controls:bool prop ->
  ?control_finding_generator:string prop ->
  ?enable_default_standards:bool prop ->
  ?id:string prop ->
  string ->
  t
