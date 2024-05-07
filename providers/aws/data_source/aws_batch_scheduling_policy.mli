(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fair_share_policy__share_distribution = {
  share_identifier : string prop;  (** share_identifier *)
  weight_factor : float prop;  (** weight_factor *)
}

type fair_share_policy = {
  compute_reservation : float prop;  (** compute_reservation *)
  share_decay_seconds : float prop;  (** share_decay_seconds *)
  share_distribution : fair_share_policy__share_distribution list;
      (** share_distribution *)
}

type aws_batch_scheduling_policy

val aws_batch_scheduling_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_batch_scheduling_policy

val yojson_of_aws_batch_scheduling_policy :
  aws_batch_scheduling_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  fair_share_policy : fair_share_policy list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
