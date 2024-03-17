(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_key__timeouts
type google_tags_tag_key

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  purpose : string prop;
  purpose_data : (string * string) list prop;
  short_name : string prop;
  update_time : string prop;
}

val google_tags_tag_key :
  ?description:string prop ->
  ?id:string prop ->
  ?purpose:string prop ->
  ?purpose_data:(string * string prop) list ->
  ?timeouts:google_tags_tag_key__timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t
