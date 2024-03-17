(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration

type aws_chimesdkvoice_voice_profile_domain__timeouts
type aws_chimesdkvoice_voice_profile_domain

val aws_chimesdkvoice_voice_profile_domain :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_chimesdkvoice_voice_profile_domain__timeouts ->
  name:string ->
  server_side_encryption_configuration:
    aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration
    list ->
  string ->
  unit
