(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_job__destination__s3
type aws_signer_signing_job__destination
type aws_signer_signing_job__source__s3
type aws_signer_signing_job__source

type aws_signer_signing_job__revocation_record = {
  reason : string;  (** reason *)
  revoked_at : string;  (** revoked_at *)
  revoked_by : string;  (** revoked_by *)
}

type aws_signer_signing_job__signed_object__s3 = {
  bucket : string;  (** bucket *)
  key : string;  (** key *)
}

type aws_signer_signing_job__signed_object = {
  s3 : aws_signer_signing_job__signed_object__s3 list;  (** s3 *)
}

type aws_signer_signing_job

val aws_signer_signing_job :
  ?id:string ->
  ?ignore_signing_job_failure:bool ->
  profile_name:string ->
  destination:aws_signer_signing_job__destination list ->
  source:aws_signer_signing_job__source list ->
  string ->
  unit
