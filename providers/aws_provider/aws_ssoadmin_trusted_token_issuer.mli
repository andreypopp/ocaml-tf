(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration__oidc_jwt_configuration

type aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration

type aws_ssoadmin_trusted_token_issuer

type t = private {
  arn : string prop;
  client_token : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_token_issuer_type : string prop;
}

val aws_ssoadmin_trusted_token_issuer :
  ?client_token:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  name:string prop ->
  trusted_token_issuer_type:string prop ->
  trusted_token_issuer_configuration:
    aws_ssoadmin_trusted_token_issuer__trusted_token_issuer_configuration
    list ->
  string ->
  t
