(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_thing_group__properties__attribute_payload = {
  attributes : (string * string) list option; [@option]
      (** attributes *)
}
[@@deriving yojson_of]
(** aws_iot_thing_group__properties__attribute_payload *)

type aws_iot_thing_group__properties = {
  description : string option; [@option]  (** description *)
  attribute_payload :
    aws_iot_thing_group__properties__attribute_payload list;
}
[@@deriving yojson_of]
(** aws_iot_thing_group__properties *)

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

type aws_iot_thing_group = {
  name : string;  (** name *)
  parent_group_name : string option; [@option]
      (** parent_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  properties : aws_iot_thing_group__properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_group *)

let aws_iot_thing_group ?parent_group_name ?tags ~name ~properties
    __resource_id =
  let __resource_type = "aws_iot_thing_group" in
  let __resource = { name; parent_group_name; tags; properties } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_group __resource);
  ()
