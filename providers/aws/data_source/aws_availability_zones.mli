(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_availability_zones

val aws_availability_zones :
  ?all_availability_zones:bool prop ->
  ?exclude_names:string prop list ->
  ?exclude_zone_ids:string prop list ->
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_availability_zones

val yojson_of_aws_availability_zones : aws_availability_zones -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  all_availability_zones : bool prop;
  exclude_names : string list prop;
  exclude_zone_ids : string list prop;
  group_names : string list prop;
  id : string prop;
  names : string list prop;
  state : string prop;
  zone_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?all_availability_zones:bool prop ->
  ?exclude_names:string prop list ->
  ?exclude_zone_ids:string prop list ->
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?all_availability_zones:bool prop ->
  ?exclude_names:string prop list ->
  ?exclude_zone_ids:string prop list ->
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
