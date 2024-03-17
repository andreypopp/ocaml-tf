(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image__guest_os_features
type google_compute_image__image_encryption_key
type google_compute_image__raw_disk
type google_compute_image__timeouts
type google_compute_image

val google_compute_image :
  ?description:string ->
  ?family:string ->
  ?labels:(string * string) list ->
  ?source_disk:string ->
  ?source_image:string ->
  ?source_snapshot:string ->
  ?timeouts:google_compute_image__timeouts ->
  name:string ->
  guest_os_features:google_compute_image__guest_os_features list ->
  image_encryption_key:
    google_compute_image__image_encryption_key list ->
  raw_disk:google_compute_image__raw_disk list ->
  string ->
  unit
