(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudformation = {
  stack_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudformation) -> ()

let yojson_of_cloudformation =
  (function
   | { stack_names = v_stack_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stack_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_stack_names
           in
           let bnd = "stack_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cloudformation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudformation

[@@@deriving.end]

type tags = {
  app_boundary_key : string prop;
  tag_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tags) -> ()

let yojson_of_tags =
  (function
   | {
       app_boundary_key = v_app_boundary_key;
       tag_values = v_tag_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tag_values
           in
           let bnd = "tag_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_boundary_key
         in
         ("app_boundary_key", arg) :: bnds
       in
       `Assoc bnds
    : tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tags

[@@@deriving.end]

type aws_devopsguru_resource_collection = {
  type_ : string prop; [@key "type"]
  cloudformation : cloudformation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : tags list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devopsguru_resource_collection) -> ()

let yojson_of_aws_devopsguru_resource_collection =
  (function
   | {
       type_ = v_type_;
       cloudformation = v_cloudformation;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg = (yojson_of_list yojson_of_tags) v_tags in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudformation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudformation)
               v_cloudformation
           in
           let bnd = "cloudformation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : aws_devopsguru_resource_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devopsguru_resource_collection

[@@@deriving.end]

let cloudformation ~stack_names () : cloudformation = { stack_names }

let tags ~app_boundary_key ~tag_values () : tags =
  { app_boundary_key; tag_values }

let aws_devopsguru_resource_collection ?(cloudformation = [])
    ?(tags = []) ~type_ () : aws_devopsguru_resource_collection =
  { type_; cloudformation; tags }

type t = { tf_name : string; id : string prop; type_ : string prop }

let make ?(cloudformation = []) ?(tags = []) ~type_ __id =
  let __type = "aws_devopsguru_resource_collection" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devopsguru_resource_collection
        (aws_devopsguru_resource_collection ~cloudformation ~tags
           ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?(cloudformation = []) ?(tags = []) ~type_
    __id =
  let (r : _ Tf_core.resource) =
    make ~cloudformation ~tags ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
