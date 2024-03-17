(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing_group__properties__attribute_payload = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
}
[@@deriving yojson_of]
(** aws_iot_thing_group__properties__attribute_payload *)

type aws_iot_thing_group__properties = {
  description : string prop option; [@option]  (** description *)
  attribute_payload :
    aws_iot_thing_group__properties__attribute_payload list;
}
[@@deriving yojson_of]
(** aws_iot_thing_group__properties *)

type aws_iot_thing_group__metadata__root_to_parent_groups = {
  group_arn : string prop;  (** group_arn *)
  group_name : string prop;  (** group_name *)
}
[@@deriving yojson_of]

type aws_iot_thing_group__metadata = {
  creation_date : string prop;  (** creation_date *)
  parent_group_name : string prop;  (** parent_group_name *)
  root_to_parent_groups :
    aws_iot_thing_group__metadata__root_to_parent_groups list;
      (** root_to_parent_groups *)
}
[@@deriving yojson_of]

type aws_iot_thing_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_group_name : string prop option; [@option]
      (** parent_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  properties : aws_iot_thing_group__properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_group *)

type t = {
  arn : string prop;
  id : string prop;
  metadata : aws_iot_thing_group__metadata list prop;
  name : string prop;
  parent_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let aws_iot_thing_group ?id ?parent_group_name ?tags ?tags_all ~name
    ~properties __resource_id =
  let __resource_type = "aws_iot_thing_group" in
  let __resource =
    ({ id; name; parent_group_name; tags; tags_all; properties }
      : aws_iot_thing_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       parent_group_name =
         Prop.computed __resource_type __resource_id
           "parent_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
