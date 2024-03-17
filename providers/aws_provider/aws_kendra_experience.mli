(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_experience__configuration__content_source_configuration

type aws_kendra_experience__configuration__user_identity_configuration
type aws_kendra_experience__configuration
type aws_kendra_experience__timeouts

type aws_kendra_experience__endpoints = {
  endpoint : string;  (** endpoint *)
  endpoint_type : string;  (** endpoint_type *)
}

type aws_kendra_experience

val aws_kendra_experience :
  ?description:string ->
  ?id:string ->
  ?timeouts:aws_kendra_experience__timeouts ->
  index_id:string ->
  name:string ->
  role_arn:string ->
  configuration:aws_kendra_experience__configuration list ->
  string ->
  unit
