(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecatalyst_project__timeouts
type aws_codecatalyst_project

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  space_name : string prop;
}

val aws_codecatalyst_project :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_codecatalyst_project__timeouts ->
  display_name:string prop ->
  space_name:string prop ->
  string ->
  t
