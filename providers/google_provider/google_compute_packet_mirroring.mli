(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_packet_mirroring__collector_ilb
type google_compute_packet_mirroring__filter
type google_compute_packet_mirroring__mirrored_resources__instances
type google_compute_packet_mirroring__mirrored_resources__subnetworks
type google_compute_packet_mirroring__mirrored_resources
type google_compute_packet_mirroring__network
type google_compute_packet_mirroring__timeouts
type google_compute_packet_mirroring

val google_compute_packet_mirroring :
  ?description:string ->
  ?id:string ->
  ?priority:float ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_compute_packet_mirroring__timeouts ->
  name:string ->
  collector_ilb:google_compute_packet_mirroring__collector_ilb list ->
  filter:google_compute_packet_mirroring__filter list ->
  mirrored_resources:
    google_compute_packet_mirroring__mirrored_resources list ->
  network:google_compute_packet_mirroring__network list ->
  string ->
  unit
