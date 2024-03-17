(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_occurrence__attestation__signatures
type google_container_analysis_occurrence__attestation
type google_container_analysis_occurrence__timeouts
type google_container_analysis_occurrence

type t = private {
  create_time : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  note_name : string prop;
  project : string prop;
  remediation : string prop;
  resource_uri : string prop;
  update_time : string prop;
}

val google_container_analysis_occurrence :
  ?id:string prop ->
  ?project:string prop ->
  ?remediation:string prop ->
  ?timeouts:google_container_analysis_occurrence__timeouts ->
  note_name:string prop ->
  resource_uri:string prop ->
  attestation:google_container_analysis_occurrence__attestation list ->
  string ->
  t
