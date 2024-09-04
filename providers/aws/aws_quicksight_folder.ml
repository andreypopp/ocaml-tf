(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  actions: string  prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  principal: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type timeouts = {
  create: string  prop option; [@option]
  delete: string  prop option; [@option]
  read: string  prop option; [@option]
  update: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_quicksight_folder = {
  aws_account_id: string  prop option; [@option]
  folder_id: string prop; 
  folder_type: string  prop option; [@option]
  id: string  prop option; [@option]
  name: string  prop option; [@option]
  parent_folder_arn: string  prop option; [@option]
  tags: string   prop Tf_core.assoc option; [@option]
  tags_all: string   prop Tf_core.assoc option; [@option]
  permissions: permissions list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts: timeouts option;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let permissions ~actions ~principal () =
  ({
    actions;
    principal;
  } : permissions);;

let timeouts ?create ?delete ?read ?update () =
  ({
    create;
    delete;
    read;
    update;
  } : timeouts);;

let aws_quicksight_folder ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ?(permissions=[]) ?timeouts ~folder_id () =
  ({
    aws_account_id;
    folder_id;
    folder_type;
    id;
    name;
    parent_folder_arn;
    tags;
    tags_all;
    permissions;
    timeouts;
  } : aws_quicksight_folder);;

type t = {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  created_time: string prop;
  folder_id: string prop;
  folder_path: string list prop;
  folder_type: string prop;
  id: string prop;
  last_updated_time: string prop;
  name: string prop;
  parent_folder_arn: string prop;
  tags: string Tf_core.assoc prop;
  tags_all: string Tf_core.assoc prop;
}

let make ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ?(permissions=[]) ?timeouts ~folder_id __id =
  let __type = "aws_quicksight_folder" in
  let __attrs = ({
    tf_name = __id;
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    created_time = Prop.computed __type __id "created_time";
    folder_id = Prop.computed __type __id "folder_id";
    folder_path = Prop.computed __type __id "folder_path";
    folder_type = Prop.computed __type __id "folder_type";
    id = Prop.computed __type __id "id";
    last_updated_time = Prop.computed __type __id "last_updated_time";
    name = Prop.computed __type __id "name";
    parent_folder_arn = Prop.computed __type __id "parent_folder_arn";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_folder (aws_quicksight_folder ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ~permissions ?timeouts ~folder_id ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ?(permissions=[]) ?timeouts ~folder_id __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ~permissions ?timeouts ~folder_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

