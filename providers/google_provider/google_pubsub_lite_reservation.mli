(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_lite_reservation__timeouts
type google_pubsub_lite_reservation

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  throughput_capacity : float prop;
}

val google_pubsub_lite_reservation :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_pubsub_lite_reservation__timeouts ->
  name:string prop ->
  throughput_capacity:float prop ->
  string ->
  t
