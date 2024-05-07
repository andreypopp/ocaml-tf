(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type saml_options

val saml_options :
  ?group_attribute:string prop ->
  ?session_timeout:float prop ->
  ?user_attribute:string prop ->
  metadata:string prop ->
  unit ->
  saml_options

type aws_opensearchserverless_security_config

val aws_opensearchserverless_security_config :
  ?description:string prop ->
  name:string prop ->
  type_:string prop ->
  saml_options:saml_options ->
  unit ->
  aws_opensearchserverless_security_config

val yojson_of_aws_opensearchserverless_security_config :
  aws_opensearchserverless_security_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  config_version : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  name:string prop ->
  type_:string prop ->
  saml_options:saml_options ->
  string ->
  t

val make :
  ?description:string prop ->
  name:string prop ->
  type_:string prop ->
  saml_options:saml_options ->
  string ->
  t Tf_core.resource
