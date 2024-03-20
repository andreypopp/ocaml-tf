(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type revocation_record = {
  reason : string prop;  (** reason *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}

type signed_object__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}

type signed_object = { s3 : signed_object__s3 list  (** s3 *) }

type source__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
  version : string prop;  (** version *)
}

type source = { s3 : source__s3 list  (** s3 *) }
type aws_signer_signing_job

val aws_signer_signing_job :
  ?id:string prop ->
  job_id:string prop ->
  unit ->
  aws_signer_signing_job

val yojson_of_aws_signer_signing_job : aws_signer_signing_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  completed_at : string prop;
  created_at : string prop;
  id : string prop;
  job_id : string prop;
  job_invoker : string prop;
  job_owner : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  profile_name : string prop;
  profile_version : string prop;
  requested_by : string prop;
  revocation_record : revocation_record list prop;
  signature_expires_at : string prop;
  signed_object : signed_object list prop;
  source : source list prop;
  status : string prop;
  status_reason : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  job_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  job_id:string prop ->
  string ->
  t Tf_core.resource
