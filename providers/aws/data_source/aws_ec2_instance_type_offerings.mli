(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_instance_type_offerings

val aws_ec2_instance_type_offerings :
  ?id:string prop ->
  ?location_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_instance_type_offerings

val yojson_of_aws_ec2_instance_type_offerings :
  aws_ec2_instance_type_offerings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_types : string list prop;
  location_type : string prop;
  location_types : string list prop;
  locations : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location_type:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
