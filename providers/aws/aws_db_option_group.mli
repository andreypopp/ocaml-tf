(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type option__option_settings

val option__option_settings :
  name:string prop ->
  value:string prop ->
  unit ->
  option__option_settings

type option_

val option_ :
  ?db_security_group_memberships:string prop list ->
  ?port:float prop ->
  ?version:string prop ->
  ?vpc_security_group_memberships:string prop list ->
  option_name:string prop ->
  option_settings:option__option_settings list ->
  unit ->
  option_

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_db_option_group

val aws_db_option_group :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?option_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  engine_name:string prop ->
  major_engine_version:string prop ->
  option_:option_ list ->
  unit ->
  aws_db_option_group

val yojson_of_aws_db_option_group : aws_db_option_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  engine_name : string prop;
  id : string prop;
  major_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  option_group_description : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?option_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  engine_name:string prop ->
  major_engine_version:string prop ->
  option_:option_ list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?option_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  engine_name:string prop ->
  major_engine_version:string prop ->
  option_:option_ list ->
  string ->
  t Tf_core.resource
