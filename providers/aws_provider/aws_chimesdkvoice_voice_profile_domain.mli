(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration

type aws_chimesdkvoice_voice_profile_domain__timeouts
type aws_chimesdkvoice_voice_profile_domain

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_chimesdkvoice_voice_profile_domain :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_chimesdkvoice_voice_profile_domain__timeouts ->
  name:string prop ->
  server_side_encryption_configuration:
    aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration
    list ->
  string ->
  t
