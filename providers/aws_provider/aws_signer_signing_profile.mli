(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_profile__signature_validity_period
type aws_signer_signing_profile__signing_material

type aws_signer_signing_profile__revocation_record = {
  revocation_effective_from : string;
      (** revocation_effective_from *)
  revoked_at : string;  (** revoked_at *)
  revoked_by : string;  (** revoked_by *)
}
[@@deriving yojson_of]

type aws_signer_signing_profile

val aws_signer_signing_profile :
  ?tags:(string * string) list ->
  platform_id:string ->
  signature_validity_period:
    aws_signer_signing_profile__signature_validity_period list ->
  signing_material:aws_signer_signing_profile__signing_material list ->
  string ->
  unit
