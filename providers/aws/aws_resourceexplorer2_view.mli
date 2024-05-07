(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filters

val filters : filter_string:string prop -> unit -> filters

type included_property

val included_property : name:string prop -> unit -> included_property

type aws_resourceexplorer2_view

val aws_resourceexplorer2_view :
  ?default_view:bool prop ->
  ?tags:(string * string prop) list ->
  ?filters:filters list ->
  ?included_property:included_property list ->
  name:string prop ->
  unit ->
  aws_resourceexplorer2_view

val yojson_of_aws_resourceexplorer2_view :
  aws_resourceexplorer2_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_view : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_view:bool prop ->
  ?tags:(string * string prop) list ->
  ?filters:filters list ->
  ?included_property:included_property list ->
  name:string prop ->
  string ->
  t

val make :
  ?default_view:bool prop ->
  ?tags:(string * string prop) list ->
  ?filters:filters list ->
  ?included_property:included_property list ->
  name:string prop ->
  string ->
  t Tf_core.resource
