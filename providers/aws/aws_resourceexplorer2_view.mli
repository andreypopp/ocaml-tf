(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type filters

val filters : filter_string:string prop -> unit -> filters

type included_property

val included_property : name:string prop -> unit -> included_property

type aws_resourceexplorer2_view

val aws_resourceexplorer2_view :
  ?default_view:bool prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  filters:filters list ->
  included_property:included_property list ->
  unit ->
  aws_resourceexplorer2_view

val yojson_of_aws_resourceexplorer2_view :
  aws_resourceexplorer2_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  name:string prop ->
  filters:filters list ->
  included_property:included_property list ->
  string ->
  t
