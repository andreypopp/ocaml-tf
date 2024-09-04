(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata__root_to_parent_groups = {
  group_arn : string prop;  (** group_arn *)
  group_name : string prop;  (** group_name *)
}

type metadata = {
  creation_date : string prop;  (** creation_date *)
  parent_group_name : string prop;  (** parent_group_name *)
  root_to_parent_groups : metadata__root_to_parent_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** root_to_parent_groups *)
}

type properties__attribute_payload

val properties__attribute_payload :
  ?attributes:string prop Tf_core.assoc ->
  unit ->
  properties__attribute_payload

type properties

val properties :
  ?description:string prop ->
  ?attribute_payload:properties__attribute_payload list ->
  unit ->
  properties

type aws_iot_thing_group

val aws_iot_thing_group :
  ?id:string prop ->
  ?parent_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  unit ->
  aws_iot_thing_group

val yojson_of_aws_iot_thing_group : aws_iot_thing_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  parent_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parent_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parent_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t Tf_core.resource
