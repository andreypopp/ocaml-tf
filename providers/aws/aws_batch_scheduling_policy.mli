(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_scheduling_policy__fair_share_policy__share_distribution

type aws_batch_scheduling_policy__fair_share_policy
type aws_batch_scheduling_policy

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_batch_scheduling_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  fair_share_policy:
    aws_batch_scheduling_policy__fair_share_policy list ->
  string ->
  t
