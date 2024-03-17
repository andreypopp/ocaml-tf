(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_group__sse_configuration
type aws_verifiedaccess_group

val aws_verifiedaccess_group :
  ?policy_document:string ->
  ?tags:(string * string) list ->
  verifiedaccess_instance_id:string ->
  sse_configuration:aws_verifiedaccess_group__sse_configuration list ->
  string ->
  unit
