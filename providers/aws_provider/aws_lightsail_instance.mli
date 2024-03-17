(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_instance__add_on
type aws_lightsail_instance

val aws_lightsail_instance :
  ?ip_address_type:string ->
  ?key_pair_name:string ->
  ?tags:(string * string) list ->
  ?user_data:string ->
  availability_zone:string ->
  blueprint_id:string ->
  bundle_id:string ->
  name:string ->
  add_on:aws_lightsail_instance__add_on list ->
  string ->
  unit
