(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action) -> ()

let yojson_of_rule__action =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action

[@@@deriving.end]

type rule__selection = {
  count_number : float prop;
  count_type : string prop;
  count_unit : string prop option; [@option]
  tag_pattern_list : string prop list option; [@option]
  tag_prefix_list : string prop list option; [@option]
  tag_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__selection) -> ()

let yojson_of_rule__selection =
  (function
   | {
       count_number = v_count_number;
       count_type = v_count_type;
       count_unit = v_count_unit;
       tag_pattern_list = v_tag_pattern_list;
       tag_prefix_list = v_tag_prefix_list;
       tag_status = v_tag_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_status in
         ("tag_status", arg) :: bnds
       in
       let bnds =
         match v_tag_prefix_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tag_prefix_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag_pattern_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tag_pattern_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "count_unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_count_type in
         ("count_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count_number in
         ("count_number", arg) :: bnds
       in
       `Assoc bnds
    : rule__selection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__selection

[@@@deriving.end]

type rule = {
  description : string prop option; [@option]
  priority : float prop;
  action : rule__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  selection : rule__selection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       description = v_description;
       priority = v_priority;
       action = v_action;
       selection = v_selection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__selection) v_selection
           in
           let bnd = "selection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_ecr_lifecycle_policy_document = {
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_lifecycle_policy_document) -> ()

let yojson_of_aws_ecr_lifecycle_policy_document =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_ecr_lifecycle_policy_document ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_lifecycle_policy_document

[@@@deriving.end]

let rule__action ~type_ () : rule__action = { type_ }

let rule__selection ?count_unit ?tag_pattern_list ?tag_prefix_list
    ~count_number ~count_type ~tag_status () : rule__selection =
  {
    count_number;
    count_type;
    count_unit;
    tag_pattern_list;
    tag_prefix_list;
    tag_status;
  }

let rule ?description ?(action = []) ?(selection = []) ~priority () :
    rule =
  { description; priority; action; selection }

let aws_ecr_lifecycle_policy_document ?(rule = []) () :
    aws_ecr_lifecycle_policy_document =
  { rule }

type t = { tf_name : string; json : string prop }

let make ?(rule = []) __id =
  let __type = "aws_ecr_lifecycle_policy_document" in
  let __attrs =
    ({ tf_name = __id; json = Prop.computed __type __id "json" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_lifecycle_policy_document
        (aws_ecr_lifecycle_policy_document ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?(rule = []) __id =
  let (r : _ Tf_core.resource) = make ~rule __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
