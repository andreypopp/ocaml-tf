(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_instance__add_on
type aws_lightsail_instance

val aws_lightsail_instance :
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_pair_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_data:string prop ->
  availability_zone:string prop ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  name:string prop ->
  add_on:aws_lightsail_instance__add_on list ->
  string ->
  unit
