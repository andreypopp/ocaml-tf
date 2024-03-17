(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_map_entry__timeouts
type google_certificate_manager_certificate_map_entry

val google_certificate_manager_certificate_map_entry :
  ?description:string ->
  ?hostname:string ->
  ?labels:(string * string) list ->
  ?matcher:string ->
  ?timeouts:
    google_certificate_manager_certificate_map_entry__timeouts ->
  certificates:string list ->
  map:string ->
  name:string ->
  string ->
  unit
