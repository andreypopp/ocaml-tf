(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_commitment__license_resource
type google_compute_region_commitment__resources
type google_compute_region_commitment__timeouts
type google_compute_region_commitment

val google_compute_region_commitment :
  ?description:string ->
  ?timeouts:google_compute_region_commitment__timeouts ->
  name:string ->
  plan:string ->
  license_resource:
    google_compute_region_commitment__license_resource list ->
  resources:google_compute_region_commitment__resources list ->
  string ->
  unit
