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

val aws_signer_signing_job :
  ?id:string prop ->
  ?ignore_signing_job_failure:bool prop ->
  profile_name:string prop ->
  destination:aws_signer_signing_job__destination list ->
  source:aws_signer_signing_job__source list ->
  string ->
  unit
