(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_service_linked_role

val aws_iam_service_linked_role :
  ?custom_suffix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aws_service_name:string prop ->
  string ->
  unit
