(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_keyspaces_keyspace__timeouts
type aws_keyspaces_keyspace

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_keyspaces_keyspace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_keyspaces_keyspace__timeouts ->
  name:string prop ->
  string ->
  t
