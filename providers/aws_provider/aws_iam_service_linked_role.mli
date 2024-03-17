(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_service_linked_role

val aws_iam_service_linked_role :
  ?custom_suffix:string ->
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  aws_service_name:string ->
  string ->
  unit
