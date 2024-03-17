(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_repository__encryption_configuration
type aws_ecr_repository__image_scanning_configuration
type aws_ecr_repository__timeouts
type aws_ecr_repository

val aws_ecr_repository :
  ?force_delete:bool ->
  ?id:string ->
  ?image_tag_mutability:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ecr_repository__timeouts ->
  name:string ->
  encryption_configuration:
    aws_ecr_repository__encryption_configuration list ->
  image_scanning_configuration:
    aws_ecr_repository__image_scanning_configuration list ->
  string ->
  unit
