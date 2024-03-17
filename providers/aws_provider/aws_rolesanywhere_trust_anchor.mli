(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rolesanywhere_trust_anchor__source__source_data
type aws_rolesanywhere_trust_anchor__source
type aws_rolesanywhere_trust_anchor

val aws_rolesanywhere_trust_anchor :
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  source:aws_rolesanywhere_trust_anchor__source list ->
  string ->
  unit
