(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_group__properties__attribute_payload
type aws_iot_thing_group__properties

type aws_iot_thing_group__metadata__root_to_parent_groups = {
  group_arn : string prop;  (** group_arn *)
  group_name : string prop;  (** group_name *)
}

type aws_iot_thing_group__metadata = {
  creation_date : string prop;  (** creation_date *)
  parent_group_name : string prop;  (** parent_group_name *)
  root_to_parent_groups :
    aws_iot_thing_group__metadata__root_to_parent_groups list;
      (** root_to_parent_groups *)
}

type aws_iot_thing_group

type t = private {
  arn : string prop;
  id : string prop;
  metadata : aws_iot_thing_group__metadata list prop;
  name : string prop;
  parent_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val aws_iot_thing_group :
  ?id:string prop ->
  ?parent_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:aws_iot_thing_group__properties list ->
  string ->
  t
