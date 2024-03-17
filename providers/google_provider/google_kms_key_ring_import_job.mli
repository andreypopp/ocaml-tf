(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_import_job__timeouts

type google_kms_key_ring_import_job__attestation = {
  content : string prop;  (** content *)
  format : string prop;  (** format *)
}

type google_kms_key_ring_import_job__public_key = {
  pem : string prop;  (** pem *)
}

type google_kms_key_ring_import_job

val google_kms_key_ring_import_job :
  ?id:string prop ->
  ?timeouts:google_kms_key_ring_import_job__timeouts ->
  import_job_id:string prop ->
  import_method:string prop ->
  key_ring:string prop ->
  protection_level:string prop ->
  string ->
  unit
