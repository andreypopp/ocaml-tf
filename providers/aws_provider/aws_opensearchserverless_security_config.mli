(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_security_config__saml_options
type aws_opensearchserverless_security_config

type t = private {
  config_version : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val aws_opensearchserverless_security_config :
  ?description:string prop ->
  name:string prop ->
  type_:string prop ->
  saml_options:aws_opensearchserverless_security_config__saml_options ->
  string ->
  t
