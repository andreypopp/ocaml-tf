(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_location_tag_binding__timeouts
type google_tags_location_tag_binding

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  tag_value : string prop;
}

val google_tags_location_tag_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?timeouts:google_tags_location_tag_binding__timeouts ->
  parent:string prop ->
  tag_value:string prop ->
  string ->
  t
