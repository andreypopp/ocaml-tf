(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type stage__target__channel_target_info

val stage__target__channel_target_info :
  ?retry_interval_in_minutes:float prop ->
  contact_channel_id:string prop ->
  unit ->
  stage__target__channel_target_info

type stage__target__contact_target_info

val stage__target__contact_target_info :
  ?contact_id:string prop ->
  is_essential:bool prop ->
  unit ->
  stage__target__contact_target_info

type stage__target

val stage__target :
  ?channel_target_info:stage__target__channel_target_info list ->
  ?contact_target_info:stage__target__contact_target_info list ->
  unit ->
  stage__target

type stage

val stage :
  ?target:stage__target list ->
  duration_in_minutes:float prop ->
  unit ->
  stage

type aws_ssmcontacts_plan

val aws_ssmcontacts_plan :
  ?id:string prop ->
  contact_id:string prop ->
  stage:stage list ->
  unit ->
  aws_ssmcontacts_plan

val yojson_of_aws_ssmcontacts_plan : aws_ssmcontacts_plan -> json

(** RESOURCE REGISTRATION *)

type t = private { contact_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  contact_id:string prop ->
  stage:stage list ->
  string ->
  t

val make :
  ?id:string prop ->
  contact_id:string prop ->
  stage:stage list ->
  string ->
  t Tf_core.resource
