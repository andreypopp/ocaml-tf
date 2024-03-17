(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rolesanywhere_trust_anchor__source__source_data
type aws_rolesanywhere_trust_anchor__source
type aws_rolesanywhere_trust_anchor

type t = private {
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_rolesanywhere_trust_anchor :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  source:aws_rolesanywhere_trust_anchor__source list ->
  string ->
  t
