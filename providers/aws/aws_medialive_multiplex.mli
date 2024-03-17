(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_multiplex__multiplex_settings
type aws_medialive_multiplex__timeouts
type aws_medialive_multiplex

type t = private {
  arn : string prop;
  availability_zones : string list prop;
  id : string prop;
  name : string prop;
  start_multiplex : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_medialive_multiplex :
  ?id:string prop ->
  ?start_multiplex:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_medialive_multiplex__timeouts ->
  availability_zones:string prop list ->
  name:string prop ->
  multiplex_settings:aws_medialive_multiplex__multiplex_settings list ->
  string ->
  t
