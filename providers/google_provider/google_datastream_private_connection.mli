(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_datastream_private_connection__timeouts
type google_datastream_private_connection__vpc_peering_config

type google_datastream_private_connection__error = {
  details : (string * string) list;  (** details *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_datastream_private_connection

val google_datastream_private_connection :
  ?labels:(string * string) list ->
  ?timeouts:google_datastream_private_connection__timeouts ->
  display_name:string ->
  location:string ->
  private_connection_id:string ->
  vpc_peering_config:
    google_datastream_private_connection__vpc_peering_config list ->
  string ->
  unit
