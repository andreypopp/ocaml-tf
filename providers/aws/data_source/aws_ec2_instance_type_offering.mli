(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_instance_type_offering

val aws_ec2_instance_type_offering :
  ?id:string prop ->
  ?location_type:string prop ->
  ?preferred_instance_types:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_instance_type_offering

val yojson_of_aws_ec2_instance_type_offering :
  aws_ec2_instance_type_offering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_type : string prop;
  location_type : string prop;
  preferred_instance_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location_type:string prop ->
  ?preferred_instance_types:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location_type:string prop ->
  ?preferred_instance_types:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
