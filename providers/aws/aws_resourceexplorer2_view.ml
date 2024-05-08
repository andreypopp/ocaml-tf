(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = { filter_string : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | { filter_string = v_filter_string } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_string in
         ("filter_string", arg) :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type included_property = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : included_property) -> ()

let yojson_of_included_property =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : included_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_included_property

[@@@deriving.end]

type aws_resourceexplorer2_view = {
  default_view : bool prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  filters : filters list; [@default []] [@yojson_drop_default ( = )]
  included_property : included_property list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_resourceexplorer2_view) -> ()

let yojson_of_aws_resourceexplorer2_view =
  (function
   | {
       default_view = v_default_view;
       name = v_name;
       tags = v_tags;
       filters = v_filters;
       included_property = v_included_property;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_included_property then bnds
         else
           let arg =
             (yojson_of_list yojson_of_included_property)
               v_included_property
           in
           let bnd = "included_property", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_filters then bnds
         else
           let arg = (yojson_of_list yojson_of_filters) v_filters in
           let bnd = "filters", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_default_view with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_view", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_resourceexplorer2_view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_resourceexplorer2_view

[@@@deriving.end]

let filters ~filter_string () : filters = { filter_string }
let included_property ~name () : included_property = { name }

let aws_resourceexplorer2_view ?default_view ?tags ?(filters = [])
    ?(included_property = []) ~name () : aws_resourceexplorer2_view =
  { default_view; name; tags; filters; included_property }

type t = {
  tf_name : string;
  arn : string prop;
  default_view : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?default_view ?tags ?(filters = [])
    ?(included_property = []) ~name __id =
  let __type = "aws_resourceexplorer2_view" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_view = Prop.computed __type __id "default_view";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_resourceexplorer2_view
        (aws_resourceexplorer2_view ?default_view ?tags ~filters
           ~included_property ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_view ?tags ?(filters = [])
    ?(included_property = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_view ?tags ~filters ~included_property ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
