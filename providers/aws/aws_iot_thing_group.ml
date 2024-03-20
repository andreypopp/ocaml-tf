(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties__attribute_payload = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
}
[@@deriving yojson_of]
(** properties__attribute_payload *)

type properties = {
  description : string prop option; [@option]  (** description *)
  attribute_payload : properties__attribute_payload list;
}
[@@deriving yojson_of]
(** properties *)

type metadata__root_to_parent_groups = {
  group_arn : string prop;  (** group_arn *)
  group_name : string prop;  (** group_name *)
}
[@@deriving yojson_of]

type metadata = {
  creation_date : string prop;  (** creation_date *)
  parent_group_name : string prop;  (** parent_group_name *)
  root_to_parent_groups : metadata__root_to_parent_groups list;
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
  properties : properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_group *)

let properties__attribute_payload ?attributes () :
    properties__attribute_payload =
  { attributes }

let properties ?description ~attribute_payload () : properties =
  { description; attribute_payload }

let aws_iot_thing_group ?id ?parent_group_name ?tags ?tags_all ~name
    ~properties () : aws_iot_thing_group =
  { id; name; parent_group_name; tags; tags_all; properties }

type t = {
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  parent_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?id ?parent_group_name ?tags ?tags_all ~name ~properties
    __id =
  let __type = "aws_iot_thing_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parent_group_name =
         Prop.computed __type __id "parent_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_group
        (aws_iot_thing_group ?id ?parent_group_name ?tags ?tags_all
           ~name ~properties ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parent_group_name ?tags ?tags_all ~name
    ~properties __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parent_group_name ?tags ?tags_all ~name ~properties
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
