(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_availability_zone

val aws_availability_zone :
  ?all_availability_zones:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?state:string prop ->
  ?zone_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_availability_zone

val yojson_of_aws_availability_zone : aws_availability_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  all_availability_zones : bool prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  name_suffix : string prop;
  network_border_group : string prop;
  opt_in_status : string prop;
  parent_zone_id : string prop;
  parent_zone_name : string prop;
  region : string prop;
  state : string prop;
  zone_id : string prop;
  zone_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?all_availability_zones:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?state:string prop ->
  ?zone_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?all_availability_zones:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?state:string prop ->
  ?zone_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
