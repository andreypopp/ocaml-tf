(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_user__identity_info
type aws_connect_user__phone_config
type aws_connect_user

val aws_connect_user :
  ?hierarchy_group_id:string ->
  ?password:string ->
  ?tags:(string * string) list ->
  instance_id:string ->
  name:string ->
  routing_profile_id:string ->
  security_profile_ids:string list ->
  identity_info:aws_connect_user__identity_info list ->
  phone_config:aws_connect_user__phone_config list ->
  string ->
  unit
