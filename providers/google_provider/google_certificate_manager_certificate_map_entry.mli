(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_map_entry__timeouts
type google_certificate_manager_certificate_map_entry

val google_certificate_manager_certificate_map_entry :
  ?description:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?matcher:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_certificate_manager_certificate_map_entry__timeouts ->
  certificates:string prop list ->
  map:string prop ->
  name:string prop ->
  string ->
  unit
