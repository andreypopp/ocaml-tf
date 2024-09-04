(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_placement_group

val aws_placement_group :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?spread_level:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  strategy:string prop ->
  unit ->
  aws_placement_group

val yojson_of_aws_placement_group : aws_placement_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  placement_group_id : string prop;
  spread_level : string prop;
  strategy : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?partition_count:float prop ->
  ?spread_level:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  strategy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?spread_level:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  strategy:string prop ->
  string ->
  t Tf_core.resource
