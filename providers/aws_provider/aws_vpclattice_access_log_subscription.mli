(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_access_log_subscription

val aws_vpclattice_access_log_subscription :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  destination_arn:string ->
  resource_identifier:string ->
  string ->
  unit
