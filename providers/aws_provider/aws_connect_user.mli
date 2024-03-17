(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_user__identity_info
type aws_connect_user__phone_config
type aws_connect_user

val aws_connect_user :
  ?directory_user_id:string prop ->
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  routing_profile_id:string prop ->
  security_profile_ids:string prop list ->
  identity_info:aws_connect_user__identity_info list ->
  phone_config:aws_connect_user__phone_config list ->
  string ->
  unit
