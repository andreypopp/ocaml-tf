(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_profile__signature_validity_period
type aws_signer_signing_profile__signing_material

type aws_signer_signing_profile__revocation_record = {
  revocation_effective_from : string prop;
      (** revocation_effective_from *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}

type aws_signer_signing_profile

val aws_signer_signing_profile :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  platform_id:string prop ->
  signature_validity_period:
    aws_signer_signing_profile__signature_validity_period list ->
  signing_material:aws_signer_signing_profile__signing_material list ->
  string ->
  unit
