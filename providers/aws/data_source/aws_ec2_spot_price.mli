(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_spot_price

val aws_ec2_spot_price :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_spot_price

val yojson_of_aws_ec2_spot_price : aws_ec2_spot_price -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_zone : string prop;
  id : string prop;
  instance_type : string prop;
  spot_price : string prop;
  spot_price_timestamp : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
