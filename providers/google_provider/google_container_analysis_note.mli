(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_note__attestation_authority__hint
type google_container_analysis_note__attestation_authority
type google_container_analysis_note__related_url
type google_container_analysis_note__timeouts
type google_container_analysis_note

val google_container_analysis_note :
  ?expiration_time:string prop ->
  ?id:string prop ->
  ?long_description:string prop ->
  ?project:string prop ->
  ?related_note_names:string prop list ->
  ?short_description:string prop ->
  ?timeouts:google_container_analysis_note__timeouts ->
  name:string prop ->
  attestation_authority:
    google_container_analysis_note__attestation_authority list ->
  related_url:google_container_analysis_note__related_url list ->
  string ->
  unit
