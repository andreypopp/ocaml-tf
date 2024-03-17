(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_trust_provider__device_options
type aws_verifiedaccess_trust_provider__oidc_options
type aws_verifiedaccess_trust_provider__timeouts
type aws_verifiedaccess_trust_provider

val aws_verifiedaccess_trust_provider :
  ?description:string ->
  ?device_trust_provider_type:string ->
  ?tags:(string * string) list ->
  ?user_trust_provider_type:string ->
  ?timeouts:aws_verifiedaccess_trust_provider__timeouts ->
  policy_reference_name:string ->
  trust_provider_type:string ->
  device_options:
    aws_verifiedaccess_trust_provider__device_options list ->
  oidc_options:aws_verifiedaccess_trust_provider__oidc_options list ->
  string ->
  unit
