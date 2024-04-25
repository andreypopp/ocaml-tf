(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attestation_authority_note__public_keys__pkix_public_key

val attestation_authority_note__public_keys__pkix_public_key :
  ?public_key_pem:string prop ->
  ?signature_algorithm:string prop ->
  unit ->
  attestation_authority_note__public_keys__pkix_public_key

type attestation_authority_note__public_keys

val attestation_authority_note__public_keys :
  ?ascii_armored_pgp_public_key:string prop ->
  ?comment:string prop ->
  ?id:string prop ->
  ?pkix_public_key:
    attestation_authority_note__public_keys__pkix_public_key list ->
  unit ->
  attestation_authority_note__public_keys

type attestation_authority_note

val attestation_authority_note :
  ?public_keys:attestation_authority_note__public_keys list ->
  note_reference:string prop ->
  unit ->
  attestation_authority_note

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_binary_authorization_attestor

val google_binary_authorization_attestor :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  attestation_authority_note:attestation_authority_note list ->
  unit ->
  google_binary_authorization_attestor

val yojson_of_google_binary_authorization_attestor :
  google_binary_authorization_attestor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  attestation_authority_note:attestation_authority_note list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  attestation_authority_note:attestation_authority_note list ->
  string ->
  t Tf_core.resource
