(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebaserules_release__timeouts
type google_firebaserules_release

type t = private {
  create_time : string prop;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  ruleset_name : string prop;
  update_time : string prop;
}

val google_firebaserules_release :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firebaserules_release__timeouts ->
  name:string prop ->
  ruleset_name:string prop ->
  string ->
  t
