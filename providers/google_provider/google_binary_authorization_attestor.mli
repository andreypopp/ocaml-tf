(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_attestor__attestation_authority_note__public_keys__pkix_public_key

type google_binary_authorization_attestor__attestation_authority_note__public_keys

type google_binary_authorization_attestor__attestation_authority_note
type google_binary_authorization_attestor__timeouts
type google_binary_authorization_attestor

val google_binary_authorization_attestor :
  ?description:string ->
  ?timeouts:google_binary_authorization_attestor__timeouts ->
  name:string ->
  attestation_authority_note:
    google_binary_authorization_attestor__attestation_authority_note
    list ->
  string ->
  unit
