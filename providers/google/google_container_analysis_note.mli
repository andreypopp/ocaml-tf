(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type attestation_authority__hint

val attestation_authority__hint :
  human_readable_name:string prop ->
  unit ->
  attestation_authority__hint

type attestation_authority

val attestation_authority :
  hint:attestation_authority__hint list ->
  unit ->
  attestation_authority

type related_url

val related_url :
  ?label:string prop -> url:string prop -> unit -> related_url

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_analysis_note

val google_container_analysis_note :
  ?expiration_time:string prop ->
  ?id:string prop ->
  ?long_description:string prop ->
  ?project:string prop ->
  ?related_note_names:string prop list ->
  ?short_description:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  attestation_authority:attestation_authority list ->
  related_url:related_url list ->
  unit ->
  google_container_analysis_note

val yojson_of_google_container_analysis_note :
  google_container_analysis_note -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  kind : string prop;
  long_description : string prop;
  name : string prop;
  project : string prop;
  related_note_names : string list prop;
  short_description : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expiration_time:string prop ->
  ?id:string prop ->
  ?long_description:string prop ->
  ?project:string prop ->
  ?related_note_names:string prop list ->
  ?short_description:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  attestation_authority:attestation_authority list ->
  related_url:related_url list ->
  string ->
  t
