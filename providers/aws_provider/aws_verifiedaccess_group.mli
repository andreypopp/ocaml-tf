(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_group__sse_configuration
type aws_verifiedaccess_group

val aws_verifiedaccess_group :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  verifiedaccess_instance_id:string prop ->
  sse_configuration:aws_verifiedaccess_group__sse_configuration list ->
  string ->
  unit
