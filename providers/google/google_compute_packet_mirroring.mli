(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type collector_ilb

val collector_ilb : url:string prop -> unit -> collector_ilb

type filter

val filter :
  ?cidr_ranges:string prop list ->
  ?direction:string prop ->
  ?ip_protocols:string prop list ->
  unit ->
  filter

type mirrored_resources__instances

val mirrored_resources__instances :
  url:string prop -> unit -> mirrored_resources__instances

type mirrored_resources__subnetworks

val mirrored_resources__subnetworks :
  url:string prop -> unit -> mirrored_resources__subnetworks

type mirrored_resources

val mirrored_resources :
  ?tags:string prop list ->
  instances:mirrored_resources__instances list ->
  subnetworks:mirrored_resources__subnetworks list ->
  unit ->
  mirrored_resources

type network

val network : url:string prop -> unit -> network

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_packet_mirroring

val google_compute_packet_mirroring :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  collector_ilb:collector_ilb list ->
  filter:filter list ->
  mirrored_resources:mirrored_resources list ->
  network:network list ->
  unit ->
  google_compute_packet_mirroring

val yojson_of_google_compute_packet_mirroring :
  google_compute_packet_mirroring -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  collector_ilb:collector_ilb list ->
  filter:filter list ->
  mirrored_resources:mirrored_resources list ->
  network:network list ->
  string ->
  t
