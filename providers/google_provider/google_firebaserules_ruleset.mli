(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebaserules_ruleset__source__files
type google_firebaserules_ruleset__source
type google_firebaserules_ruleset__timeouts

type google_firebaserules_ruleset__metadata = {
  services : string prop list;  (** services *)
}

type google_firebaserules_ruleset

type t = private {
  create_time : string prop;
  id : string prop;
  metadata : google_firebaserules_ruleset__metadata list prop;
  name : string prop;
  project : string prop;
}

val google_firebaserules_ruleset :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firebaserules_ruleset__timeouts ->
  source:google_firebaserules_ruleset__source list ->
  string ->
  t
