(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hierarchy_path__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type hierarchy_path__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type hierarchy_path__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type hierarchy_path__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type hierarchy_path__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type hierarchy_path = {
  level_five : hierarchy_path__level_five list;  (** level_five *)
  level_four : hierarchy_path__level_four list;  (** level_four *)
  level_one : hierarchy_path__level_one list;  (** level_one *)
  level_three : hierarchy_path__level_three list;  (** level_three *)
  level_two : hierarchy_path__level_two list;  (** level_two *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  parent_group_id : string prop option; [@option]
      (** parent_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_group *)

let aws_connect_user_hierarchy_group ?id ?parent_group_id ?tags
    ?tags_all ~instance_id ~name () :
    aws_connect_user_hierarchy_group =
  { id; instance_id; name; parent_group_id; tags; tags_all }

type t = {
  arn : string prop;
  hierarchy_group_id : string prop;
  hierarchy_path : hierarchy_path list prop;
  id : string prop;
  instance_id : string prop;
  level_id : string prop;
  name : string prop;
  parent_group_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?parent_group_id ?tags ?tags_all ~instance_id ~name __id
    =
  let __type = "aws_connect_user_hierarchy_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       hierarchy_group_id =
         Prop.computed __type __id "hierarchy_group_id";
       hierarchy_path = Prop.computed __type __id "hierarchy_path";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       level_id = Prop.computed __type __id "level_id";
       name = Prop.computed __type __id "name";
       parent_group_id = Prop.computed __type __id "parent_group_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_user_hierarchy_group
        (aws_connect_user_hierarchy_group ?id ?parent_group_id ?tags
           ?tags_all ~instance_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parent_group_id ?tags ?tags_all
    ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parent_group_id ?tags ?tags_all ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
