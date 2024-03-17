(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_activation

val aws_ssm_activation :
  ?description:string ->
  ?name:string ->
  ?registration_limit:float ->
  ?tags:(string * string) list ->
  iam_role:string ->
  string ->
  unit
