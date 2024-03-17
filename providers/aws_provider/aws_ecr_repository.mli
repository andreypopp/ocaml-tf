(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_repository__encryption_configuration
type aws_ecr_repository__image_scanning_configuration
type aws_ecr_repository__timeouts
type aws_ecr_repository

val aws_ecr_repository :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?image_tag_mutability:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ecr_repository__timeouts ->
  name:string prop ->
  encryption_configuration:
    aws_ecr_repository__encryption_configuration list ->
  image_scanning_configuration:
    aws_ecr_repository__image_scanning_configuration list ->
  string ->
  unit
