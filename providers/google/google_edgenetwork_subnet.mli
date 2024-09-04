(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_edgenetwork_subnet

val google_edgenetwork_subnet :
  ?description:string prop ->
  ?id:string prop ->
  ?ipv4_cidr:string prop list ->
  ?ipv6_cidr:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?vlan_id:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network:string prop ->
  subnet_id:string prop ->
  zone:string prop ->
  unit ->
  google_edgenetwork_subnet

val yojson_of_google_edgenetwork_subnet :
  google_edgenetwork_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  ipv4_cidr : string list prop;
  ipv6_cidr : string list prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  state : string prop;
  subnet_id : string prop;
  update_time : string prop;
  vlan_id : float prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?ipv4_cidr:string prop list ->
  ?ipv6_cidr:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?vlan_id:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network:string prop ->
  subnet_id:string prop ->
  zone:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?ipv4_cidr:string prop list ->
  ?ipv6_cidr:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?vlan_id:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network:string prop ->
  subnet_id:string prop ->
  zone:string prop ->
  string ->
  t Tf_core.resource
