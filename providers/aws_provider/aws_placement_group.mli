(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_placement_group

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  placement_group_id : string prop;
  spread_level : string prop;
  strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_placement_group :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?spread_level:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  strategy:string prop ->
  string ->
  t
