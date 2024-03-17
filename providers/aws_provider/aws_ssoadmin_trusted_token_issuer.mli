(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration

type aws_ssoadmin_trusted_token_issuer

val aws_ssoadmin_trusted_token_issuer :
  ?client_token:string ->
  ?tags:(string * string) list ->
  instance_arn:string ->
  name:string ->
  trusted_token_issuer_type:string ->
  trusted_token_issuer_configuration:
    aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration
    list ->
  string ->
  unit
