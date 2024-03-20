(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type server_side_encryption_configuration

val server_side_encryption_configuration :
  kms_key_arn:string prop ->
  unit ->
  server_side_encryption_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_chimesdkvoice_voice_profile_domain

val aws_chimesdkvoice_voice_profile_domain :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  unit ->
  aws_chimesdkvoice_voice_profile_domain

val yojson_of_aws_chimesdkvoice_voice_profile_domain :
  aws_chimesdkvoice_voice_profile_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  string ->
  t Tf_core.resource
