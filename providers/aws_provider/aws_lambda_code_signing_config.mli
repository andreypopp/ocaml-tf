(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_code_signing_config__allowed_publishers
type aws_lambda_code_signing_config__policies
type aws_lambda_code_signing_config

val aws_lambda_code_signing_config :
  ?description:string prop ->
  ?id:string prop ->
  allowed_publishers:
    aws_lambda_code_signing_config__allowed_publishers list ->
  policies:aws_lambda_code_signing_config__policies list ->
  string ->
  unit
