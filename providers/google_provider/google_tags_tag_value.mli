(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_value__timeouts
type google_tags_tag_value

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  short_name : string prop;
  update_time : string prop;
}

val google_tags_tag_value :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_tags_tag_value__timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t
