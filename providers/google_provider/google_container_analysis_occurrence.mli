(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_occurrence__attestation__signatures
type google_container_analysis_occurrence__attestation
type google_container_analysis_occurrence__timeouts
type google_container_analysis_occurrence

val google_container_analysis_occurrence :
  ?id:string ->
  ?project:string ->
  ?remediation:string ->
  ?timeouts:google_container_analysis_occurrence__timeouts ->
  note_name:string ->
  resource_uri:string ->
  attestation:google_container_analysis_occurrence__attestation list ->
  string ->
  unit
