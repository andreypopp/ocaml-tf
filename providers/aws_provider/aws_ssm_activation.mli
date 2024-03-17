(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_activation

val aws_ssm_activation :
  ?description:string ->
  ?expiration_date:string ->
  ?id:string ->
  ?name:string ->
  ?registration_limit:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  iam_role:string ->
  string ->
  unit
