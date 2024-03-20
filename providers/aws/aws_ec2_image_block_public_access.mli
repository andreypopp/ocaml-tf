(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?update:string prop -> unit -> timeouts

type aws_ec2_image_block_public_access

val aws_ec2_image_block_public_access :
  ?id:string prop ->
  ?timeouts:timeouts ->
  state:string prop ->
  unit ->
  aws_ec2_image_block_public_access

val yojson_of_aws_ec2_image_block_public_access :
  aws_ec2_image_block_public_access -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; state : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  state:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  state:string prop ->
  string ->
  t Tf_core.resource
