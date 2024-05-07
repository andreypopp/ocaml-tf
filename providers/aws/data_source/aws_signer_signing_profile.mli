(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type revocation_record = {
  revocation_effective_from : string prop;
      (** revocation_effective_from *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}

type signature_validity_period = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}

type aws_signer_signing_profile

val aws_signer_signing_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_signer_signing_profile

val yojson_of_aws_signer_signing_profile :
  aws_signer_signing_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  revocation_record : revocation_record list prop;
  signature_validity_period : signature_validity_period list prop;
  status : string prop;
  tags : (string * string) list prop;
  version : string prop;
  version_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
