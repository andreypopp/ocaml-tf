(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__parameters

val configuration__parameters :
  name:string prop ->
  values:string prop list ->
  unit ->
  configuration__parameters

type configuration

val configuration :
  type_:string prop ->
  parameters:configuration__parameters list ->
  unit ->
  configuration

type resource_query

val resource_query :
  ?type_:string prop -> query:string prop -> unit -> resource_query

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_resourcegroups_group

val aws_resourcegroups_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?resource_query:resource_query list ->
  ?timeouts:timeouts ->
  name:string prop ->
  configuration:configuration list ->
  unit ->
  aws_resourcegroups_group

val yojson_of_aws_resourcegroups_group :
  aws_resourcegroups_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?resource_query:resource_query list ->
  ?timeouts:timeouts ->
  name:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?resource_query:resource_query list ->
  ?timeouts:timeouts ->
  name:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
