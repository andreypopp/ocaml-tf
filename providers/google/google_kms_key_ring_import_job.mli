(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attestation = {
  content : string prop;  (** content *)
  format : string prop;  (** format *)
}

type public_key = { pem : string prop  (** pem *) }
type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_kms_key_ring_import_job

val google_kms_key_ring_import_job :
  ?id:string prop ->
  ?timeouts:timeouts ->
  import_job_id:string prop ->
  import_method:string prop ->
  key_ring:string prop ->
  protection_level:string prop ->
  unit ->
  google_kms_key_ring_import_job

val yojson_of_google_kms_key_ring_import_job :
  google_kms_key_ring_import_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attestation : attestation list prop;
  expire_time : string prop;
  id : string prop;
  import_job_id : string prop;
  import_method : string prop;
  key_ring : string prop;
  name : string prop;
  protection_level : string prop;
  public_key : public_key list prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  import_job_id:string prop ->
  import_method:string prop ->
  key_ring:string prop ->
  protection_level:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  import_job_id:string prop ->
  import_method:string prop ->
  key_ring:string prop ->
  protection_level:string prop ->
  string ->
  t Tf_core.resource
