(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_access_log_subscription

val aws_vpclattice_access_log_subscription :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  resource_identifier:string prop ->
  string ->
  unit
