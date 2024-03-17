(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_experience__configuration__content_source_configuration

type aws_kendra_experience__configuration__user_identity_configuration
type aws_kendra_experience__configuration
type aws_kendra_experience__timeouts

type aws_kendra_experience__endpoints = {
  endpoint : string prop;  (** endpoint *)
  endpoint_type : string prop;  (** endpoint_type *)
}

type aws_kendra_experience

val aws_kendra_experience :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_kendra_experience__timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  configuration:aws_kendra_experience__configuration list ->
  string ->
  unit
