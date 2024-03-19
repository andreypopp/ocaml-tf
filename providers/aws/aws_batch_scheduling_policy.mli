(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type fair_share_policy__share_distribution

val fair_share_policy__share_distribution :
  ?weight_factor:float prop ->
  share_identifier:string prop ->
  unit ->
  fair_share_policy__share_distribution

type fair_share_policy

val fair_share_policy :
  ?compute_reservation:float prop ->
  ?share_decay_seconds:float prop ->
  share_distribution:fair_share_policy__share_distribution list ->
  unit ->
  fair_share_policy

type aws_batch_scheduling_policy

val aws_batch_scheduling_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  fair_share_policy:fair_share_policy list ->
  unit ->
  aws_batch_scheduling_policy

val yojson_of_aws_batch_scheduling_policy :
  aws_batch_scheduling_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  fair_share_policy:fair_share_policy list ->
  string ->
  t
