(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attestation__signatures

val attestation__signatures :
  ?signature:string prop ->
  public_key_id:string prop ->
  unit ->
  attestation__signatures

type attestation

val attestation :
  serialized_payload:string prop ->
  signatures:attestation__signatures list ->
  unit ->
  attestation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_analysis_occurrence

val google_container_analysis_occurrence :
  ?id:string prop ->
  ?project:string prop ->
  ?remediation:string prop ->
  ?timeouts:timeouts ->
  note_name:string prop ->
  resource_uri:string prop ->
  attestation:attestation list ->
  unit ->
  google_container_analysis_occurrence

val yojson_of_google_container_analysis_occurrence :
  google_container_analysis_occurrence -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?remediation:string prop ->
  ?timeouts:timeouts ->
  note_name:string prop ->
  resource_uri:string prop ->
  attestation:attestation list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?remediation:string prop ->
  ?timeouts:timeouts ->
  note_name:string prop ->
  resource_uri:string prop ->
  attestation:attestation list ->
  string ->
  t Tf_core.resource
