(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_group__properties__attribute_payload
type aws_iot_thing_group__properties

type aws_iot_thing_group__metadata__root_to_parent_groups = {
  group_arn : string;  (** group_arn *)
  group_name : string;  (** group_name *)
}
[@@deriving yojson_of]

type aws_iot_thing_group__metadata = {
  creation_date : string;  (** creation_date *)
  parent_group_name : string;  (** parent_group_name *)
  root_to_parent_groups :
    aws_iot_thing_group__metadata__root_to_parent_groups list;
      (** root_to_parent_groups *)
}
[@@deriving yojson_of]

type aws_iot_thing_group

val aws_iot_thing_group :
  ?parent_group_name:string ->
  ?tags:(string * string) list ->
  name:string ->
  properties:aws_iot_thing_group__properties list ->
  string ->
  unit
