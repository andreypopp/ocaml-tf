(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_protection_group

type t = private {
  aggregation : string prop;
  id : string prop;
  members : string list prop;
  pattern : string prop;
  protection_group_arn : string prop;
  protection_group_id : string prop;
  resource_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_shield_protection_group :
  ?id:string prop ->
  ?members:string prop list ->
  ?resource_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aggregation:string prop ->
  pattern:string prop ->
  protection_group_id:string prop ->
  string ->
  t
