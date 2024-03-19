(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rules

val rules :
  ?description:string prop -> source:string prop -> unit -> rules

type aws_workspaces_ip_group

val aws_workspaces_ip_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  rules:rules list ->
  unit ->
  aws_workspaces_ip_group

val yojson_of_aws_workspaces_ip_group :
  aws_workspaces_ip_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  rules:rules list ->
  string ->
  t
