(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_link__timeouts
type aws_oam_link

type t = private {
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_oam_link :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_oam_link__timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  t
