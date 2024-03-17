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

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  revocation_record :
    aws_signer_signing_profile__revocation_record list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  version_arn : string prop;
}

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
  t
