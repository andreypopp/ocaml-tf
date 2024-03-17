(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_job__destination__s3
type aws_signer_signing_job__destination
type aws_signer_signing_job__source__s3
type aws_signer_signing_job__source

type aws_signer_signing_job__revocation_record = {
  reason : string prop;  (** reason *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}

type aws_signer_signing_job__signed_object__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}

type aws_signer_signing_job__signed_object = {
  s3 : aws_signer_signing_job__signed_object__s3 list;  (** s3 *)
}

type aws_signer_signing_job

type t = private {
  completed_at : string prop;
  created_at : string prop;
  id : string prop;
  ignore_signing_job_failure : bool prop;
  job_id : string prop;
  job_invoker : string prop;
  job_owner : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  profile_name : string prop;
  profile_version : string prop;
  requested_by : string prop;
  revocation_record :
    aws_signer_signing_job__revocation_record list prop;
  signature_expires_at : string prop;
  signed_object : aws_signer_signing_job__signed_object list prop;
  status : string prop;
  status_reason : string prop;
}

val aws_signer_signing_job :
  ?id:string prop ->
  ?ignore_signing_job_failure:bool prop ->
  profile_name:string prop ->
  destination:aws_signer_signing_job__destination list ->
  source:aws_signer_signing_job__source list ->
  string ->
  t
