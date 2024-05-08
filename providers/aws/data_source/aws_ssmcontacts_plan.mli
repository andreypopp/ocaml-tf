(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type stage__target__contact_target_info = {
  contact_id : string prop;  (** contact_id *)
  is_essential : bool prop;  (** is_essential *)
}

type stage__target__channel_target_info = {
  contact_channel_id : string prop;  (** contact_channel_id *)
  retry_interval_in_minutes : float prop;
      (** retry_interval_in_minutes *)
}

type stage__target = {
  channel_target_info : stage__target__channel_target_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** channel_target_info *)
  contact_target_info : stage__target__contact_target_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** contact_target_info *)
}

type stage = {
  duration_in_minutes : float prop;  (** duration_in_minutes *)
  target : stage__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target *)
}

type aws_ssmcontacts_plan

val aws_ssmcontacts_plan :
  ?id:string prop ->
  contact_id:string prop ->
  unit ->
  aws_ssmcontacts_plan

val yojson_of_aws_ssmcontacts_plan : aws_ssmcontacts_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  contact_id : string prop;
  id : string prop;
  stage : stage list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  contact_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  contact_id:string prop ->
  string ->
  t Tf_core.resource
