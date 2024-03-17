(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_trust_provider__device_options
type aws_verifiedaccess_trust_provider__oidc_options
type aws_verifiedaccess_trust_provider__timeouts
type aws_verifiedaccess_trust_provider

type t = private {
  description : string prop;
  device_trust_provider_type : string prop;
  id : string prop;
  policy_reference_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trust_provider_type : string prop;
  user_trust_provider_type : string prop;
}

val aws_verifiedaccess_trust_provider :
  ?description:string prop ->
  ?device_trust_provider_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_trust_provider_type:string prop ->
  ?timeouts:aws_verifiedaccess_trust_provider__timeouts ->
  policy_reference_name:string prop ->
  trust_provider_type:string prop ->
  device_options:
    aws_verifiedaccess_trust_provider__device_options list ->
  oidc_options:aws_verifiedaccess_trust_provider__oidc_options list ->
  string ->
  t
