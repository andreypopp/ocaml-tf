(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_key__timeouts
type google_tags_tag_key

val google_tags_tag_key :
  ?description:string ->
  ?id:string ->
  ?purpose:string ->
  ?purpose_data:(string * string) list ->
  ?timeouts:google_tags_tag_key__timeouts ->
  parent:string ->
  short_name:string ->
  string ->
  unit
