(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type revocation_configuration__ocsp_configuration = {
  enabled : bool prop;  (** enabled *)
  ocsp_custom_cname : string prop;  (** ocsp_custom_cname *)
}

type revocation_configuration__crl_configuration = {
  custom_cname : string prop;  (** custom_cname *)
  enabled : bool prop;  (** enabled *)
  expiration_in_days : float prop;  (** expiration_in_days *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_object_acl : string prop;  (** s3_object_acl *)
}

type revocation_configuration = {
  crl_configuration :
    revocation_configuration__crl_configuration list;
      (** crl_configuration *)
  ocsp_configuration :
    revocation_configuration__ocsp_configuration list;
      (** ocsp_configuration *)
}

type aws_acmpca_certificate_authority

val aws_acmpca_certificate_authority :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_acmpca_certificate_authority

val yojson_of_aws_acmpca_certificate_authority :
  aws_acmpca_certificate_authority -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  id : string prop;
  key_storage_security_standard : string prop;
  not_after : string prop;
  not_before : string prop;
  revocation_configuration : revocation_configuration list prop;
  serial : string prop;
  status : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  usage_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
