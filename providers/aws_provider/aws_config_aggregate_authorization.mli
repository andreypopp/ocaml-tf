(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_aggregate_authorization

val aws_config_aggregate_authorization :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  account_id:string prop ->
  region:string prop ->
  string ->
  unit
