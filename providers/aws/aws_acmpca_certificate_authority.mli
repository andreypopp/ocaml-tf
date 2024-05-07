(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_authority_configuration__subject

val certificate_authority_configuration__subject :
  ?common_name:string prop ->
  ?country:string prop ->
  ?distinguished_name_qualifier:string prop ->
  ?generation_qualifier:string prop ->
  ?given_name:string prop ->
  ?initials:string prop ->
  ?locality:string prop ->
  ?organization:string prop ->
  ?organizational_unit:string prop ->
  ?pseudonym:string prop ->
  ?state:string prop ->
  ?surname:string prop ->
  ?title:string prop ->
  unit ->
  certificate_authority_configuration__subject

type certificate_authority_configuration

val certificate_authority_configuration :
  key_algorithm:string prop ->
  signing_algorithm:string prop ->
  subject:certificate_authority_configuration__subject list ->
  unit ->
  certificate_authority_configuration

type revocation_configuration__crl_configuration

val revocation_configuration__crl_configuration :
  ?custom_cname:string prop ->
  ?enabled:bool prop ->
  ?expiration_in_days:float prop ->
  ?s3_bucket_name:string prop ->
  ?s3_object_acl:string prop ->
  unit ->
  revocation_configuration__crl_configuration

type revocation_configuration__ocsp_configuration

val revocation_configuration__ocsp_configuration :
  ?ocsp_custom_cname:string prop ->
  enabled:bool prop ->
  unit ->
  revocation_configuration__ocsp_configuration

type revocation_configuration

val revocation_configuration :
  ?crl_configuration:revocation_configuration__crl_configuration list ->
  ?ocsp_configuration:
    revocation_configuration__ocsp_configuration list ->
  unit ->
  revocation_configuration

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_acmpca_certificate_authority

val aws_acmpca_certificate_authority :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_storage_security_standard:string prop ->
  ?permanent_deletion_time_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?usage_mode:string prop ->
  ?revocation_configuration:revocation_configuration list ->
  ?timeouts:timeouts ->
  certificate_authority_configuration:
    certificate_authority_configuration list ->
  unit ->
  aws_acmpca_certificate_authority

val yojson_of_aws_acmpca_certificate_authority :
  aws_acmpca_certificate_authority -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  enabled : bool prop;
  id : string prop;
  key_storage_security_standard : string prop;
  not_after : string prop;
  not_before : string prop;
  permanent_deletion_time_in_days : float prop;
  serial : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  usage_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_storage_security_standard:string prop ->
  ?permanent_deletion_time_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?usage_mode:string prop ->
  ?revocation_configuration:revocation_configuration list ->
  ?timeouts:timeouts ->
  certificate_authority_configuration:
    certificate_authority_configuration list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_storage_security_standard:string prop ->
  ?permanent_deletion_time_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?usage_mode:string prop ->
  ?revocation_configuration:revocation_configuration list ->
  ?timeouts:timeouts ->
  certificate_authority_configuration:
    certificate_authority_configuration list ->
  string ->
  t Tf_core.resource
