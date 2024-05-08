(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hierarchy_structure__level_two = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure__level_two) -> ()

let yojson_of_hierarchy_structure__level_two =
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
    : hierarchy_structure__level_two ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure__level_two

[@@@deriving.end]

type hierarchy_structure__level_three = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure__level_three) -> ()

let yojson_of_hierarchy_structure__level_three =
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
    : hierarchy_structure__level_three ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure__level_three

[@@@deriving.end]

type hierarchy_structure__level_one = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure__level_one) -> ()

let yojson_of_hierarchy_structure__level_one =
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
    : hierarchy_structure__level_one ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure__level_one

[@@@deriving.end]

type hierarchy_structure__level_four = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure__level_four) -> ()

let yojson_of_hierarchy_structure__level_four =
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
    : hierarchy_structure__level_four ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure__level_four

[@@@deriving.end]

type hierarchy_structure__level_five = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure__level_five) -> ()

let yojson_of_hierarchy_structure__level_five =
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
    : hierarchy_structure__level_five ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure__level_five

[@@@deriving.end]

type hierarchy_structure = {
  level_five : hierarchy_structure__level_five list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  level_four : hierarchy_structure__level_four list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  level_one : hierarchy_structure__level_one list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  level_three : hierarchy_structure__level_three list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  level_two : hierarchy_structure__level_two list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hierarchy_structure) -> ()

let yojson_of_hierarchy_structure =
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
         if Stdlib.( = ) [] v_level_two then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hierarchy_structure__level_two)
               v_level_two
           in
           let bnd = "level_two", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_level_three then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hierarchy_structure__level_three)
               v_level_three
           in
           let bnd = "level_three", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_level_one then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hierarchy_structure__level_one)
               v_level_one
           in
           let bnd = "level_one", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_level_four then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hierarchy_structure__level_four)
               v_level_four
           in
           let bnd = "level_four", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_level_five then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hierarchy_structure__level_five)
               v_level_five
           in
           let bnd = "level_five", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hierarchy_structure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hierarchy_structure

[@@@deriving.end]

type aws_connect_user_hierarchy_structure = {
  id : string prop option; [@option]
  instance_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_user_hierarchy_structure) -> ()

let yojson_of_aws_connect_user_hierarchy_structure =
  (function
   | { id = v_id; instance_id = v_instance_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_connect_user_hierarchy_structure ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_user_hierarchy_structure

[@@@deriving.end]

let aws_connect_user_hierarchy_structure ?id ~instance_id () :
    aws_connect_user_hierarchy_structure =
  { id; instance_id }

type t = {
  tf_name : string;
  hierarchy_structure : hierarchy_structure list prop;
  id : string prop;
  instance_id : string prop;
}

let make ?id ~instance_id __id =
  let __type = "aws_connect_user_hierarchy_structure" in
  let __attrs =
    ({
       tf_name = __id;
       hierarchy_structure =
         Prop.computed __type __id "hierarchy_structure";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_user_hierarchy_structure
        (aws_connect_user_hierarchy_structure ?id ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_id __id =
  let (r : _ Tf_core.resource) = make ?id ~instance_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
