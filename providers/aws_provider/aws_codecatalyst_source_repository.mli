(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecatalyst_source_repository__timeouts
type aws_codecatalyst_source_repository

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  project_name : string prop;
  space_name : string prop;
}

val aws_codecatalyst_source_repository :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_codecatalyst_source_repository__timeouts ->
  name:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  string ->
  t
