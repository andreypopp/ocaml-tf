(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_key__timeouts
type google_tags_tag_key

val google_tags_tag_key :
  ?description:string prop ->
  ?id:string prop ->
  ?purpose:string prop ->
  ?purpose_data:(string * string prop) list ->
  ?timeouts:google_tags_tag_key__timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  unit
