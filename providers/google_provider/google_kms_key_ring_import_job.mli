(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_import_job__timeouts

type google_kms_key_ring_import_job__attestation = {
  content : string;  (** content *)
  format : string;  (** format *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job__public_key = {
  pem : string;  (** pem *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job

val google_kms_key_ring_import_job :
  ?timeouts:google_kms_key_ring_import_job__timeouts ->
  import_job_id:string ->
  import_method:string ->
  key_ring:string ->
  protection_level:string ->
  string ->
  unit
