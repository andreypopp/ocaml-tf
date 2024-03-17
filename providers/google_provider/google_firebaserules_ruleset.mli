(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firebaserules_ruleset__source__files
type google_firebaserules_ruleset__source
type google_firebaserules_ruleset__timeouts

type google_firebaserules_ruleset__metadata = {
  services : string list;  (** services *)
}
[@@deriving yojson_of]

type google_firebaserules_ruleset

val google_firebaserules_ruleset :
  ?timeouts:google_firebaserules_ruleset__timeouts ->
  source:google_firebaserules_ruleset__source list ->
  string ->
  unit
