(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_repository__encryption_configuration
type aws_ecr_repository__image_scanning_configuration
type aws_ecr_repository__timeouts
type aws_ecr_repository

type t = private {
  arn : string prop;
  force_delete : bool prop;
  id : string prop;
  image_tag_mutability : string prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
