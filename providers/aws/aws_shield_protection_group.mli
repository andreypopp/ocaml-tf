(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_shield_protection_group

val aws_shield_protection_group :
  ?id:string prop ->
  ?members:string prop list ->
  ?resource_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aggregation:string prop ->
  pattern:string prop ->
  protection_group_id:string prop ->
  unit ->
  aws_shield_protection_group

val yojson_of_aws_shield_protection_group :
  aws_shield_protection_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aggregation : string prop;
  id : string prop;
  members : string list prop;
  pattern : string prop;
  protection_group_arn : string prop;
  protection_group_id : string prop;
  resource_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?members:string prop list ->
  ?resource_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aggregation:string prop ->
  pattern:string prop ->
  protection_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?members:string prop list ->
  ?resource_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aggregation:string prop ->
  pattern:string prop ->
  protection_group_id:string prop ->
  string ->
  t Tf_core.resource
