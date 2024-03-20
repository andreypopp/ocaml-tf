(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hierarchy_path__level_two = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path__level_two) -> ()

let yojson_of_hierarchy_path__level_two =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path__level_two -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path__level_two

[@@@deriving.end]

type hierarchy_path__level_three = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path__level_three) -> ()

let yojson_of_hierarchy_path__level_three =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path__level_three ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path__level_three

[@@@deriving.end]

type hierarchy_path__level_one = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path__level_one) -> ()

let yojson_of_hierarchy_path__level_one =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path__level_one -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path__level_one

[@@@deriving.end]

type hierarchy_path__level_four = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path__level_four) -> ()

let yojson_of_hierarchy_path__level_four =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path__level_four -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path__level_four

[@@@deriving.end]

type hierarchy_path__level_five = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path__level_five) -> ()

let yojson_of_hierarchy_path__level_five =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path__level_five -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path__level_five

[@@@deriving.end]

type hierarchy_path = {
  level_five : hierarchy_path__level_five list;
  level_four : hierarchy_path__level_four list;
  level_one : hierarchy_path__level_one list;
  level_three : hierarchy_path__level_three list;
  level_two : hierarchy_path__level_two list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_path) -> ()

let yojson_of_hierarchy_path =
  (function
   | {
       level_five = v_level_five;
       level_four = v_level_four;
       level_one = v_level_one;
       level_three = v_level_three;
       level_two = v_level_two;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hierarchy_path__level_two
             v_level_two
         in
         ("level_two", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hierarchy_path__level_three
             v_level_three
         in
         ("level_three", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hierarchy_path__level_one
             v_level_one
         in
         ("level_one", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hierarchy_path__level_four
             v_level_four
         in
         ("level_four", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hierarchy_path__level_five
             v_level_five
         in
         ("level_five", arg) :: bnds
       in
       `Assoc bnds
    : hierarchy_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_path

[@@@deriving.end]

type aws_connect_user_hierarchy_group = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  parent_group_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_user_hierarchy_group) -> ()

let yojson_of_aws_connect_user_hierarchy_group =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       parent_group_id = v_parent_group_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_user_hierarchy_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_user_hierarchy_group

[@@@deriving.end]

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
