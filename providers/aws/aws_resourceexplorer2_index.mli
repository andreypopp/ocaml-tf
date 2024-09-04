(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_resourceexplorer2_index

val aws_resourceexplorer2_index :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  type_:string prop ->
  unit ->
  aws_resourceexplorer2_index

val yojson_of_aws_resourceexplorer2_index :
  aws_resourceexplorer2_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t Tf_core.resource
