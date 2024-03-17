(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_sink__timeouts
type aws_oam_sink

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  sink_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_oam_sink :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_oam_sink__timeouts ->
  name:string prop ->
  string ->
  t
