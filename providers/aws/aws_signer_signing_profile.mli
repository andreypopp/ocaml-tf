(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type revocation_record = {
  revocation_effective_from : string prop;
      (** revocation_effective_from *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}

type signature_validity_period

val signature_validity_period :
  type_:string prop ->
  value:float prop ->
  unit ->
  signature_validity_period

type signing_material

val signing_material :
  certificate_arn:string prop -> unit -> signing_material

type aws_signer_signing_profile

val aws_signer_signing_profile :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  platform_id:string prop ->
  signature_validity_period:signature_validity_period list ->
  signing_material:signing_material list ->
  unit ->
  aws_signer_signing_profile

val yojson_of_aws_signer_signing_profile :
  aws_signer_signing_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  revocation_record : revocation_record list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  version_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  platform_id:string prop ->
  signature_validity_period:signature_validity_period list ->
  signing_material:signing_material list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  platform_id:string prop ->
  signature_validity_period:signature_validity_period list ->
  signing_material:signing_material list ->
  string ->
  t Tf_core.resource
