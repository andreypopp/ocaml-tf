(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_count = {
  complete : bool prop;
  total_resources : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_count) -> ()

let yojson_of_resource_count =
  (function
   | { complete = v_complete; total_resources = v_total_resources }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_resources
         in
         ("total_resources", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_complete in
         ("complete", arg) :: bnds
       in
       `Assoc bnds
    : resource_count -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_count

[@@@deriving.end]

type resources__properties = {
  data : string prop;
  last_reported_at : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources__properties) -> ()

let yojson_of_resources__properties =
  (function
   | {
       data = v_data;
       last_reported_at = v_last_reported_at;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_reported_at
         in
         ("last_reported_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : resources__properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources__properties

[@@@deriving.end]

type resources = {
  arn : string prop;
  last_reported_at : string prop;
  owning_account_id : string prop;
  properties : resources__properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  region : string prop;
  resource_type : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | {
       arn = v_arn;
       last_reported_at = v_last_reported_at;
       owning_account_id = v_owning_account_id;
       properties = v_properties;
       region = v_region;
       resource_type = v_resource_type;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_properties then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resources__properties)
               v_properties
           in
           let bnd = "properties", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_owning_account_id
         in
         ("owning_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_reported_at
         in
         ("last_reported_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

[@@@deriving.end]

type aws_resourceexplorer2_search = {
  query_string : string prop;
  view_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_resourceexplorer2_search) -> ()

let yojson_of_aws_resourceexplorer2_search =
  (function
   | { query_string = v_query_string; view_arn = v_view_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_view_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "view_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_string in
         ("query_string", arg) :: bnds
       in
       `Assoc bnds
    : aws_resourceexplorer2_search ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_resourceexplorer2_search

[@@@deriving.end]

let aws_resourceexplorer2_search ?view_arn ~query_string () :
    aws_resourceexplorer2_search =
  { query_string; view_arn }

type t = {
  tf_name : string;
  id : string prop;
  query_string : string prop;
  resource_count : resource_count list prop;
  resources : resources list prop;
  view_arn : string prop;
}

let make ?view_arn ~query_string __id =
  let __type = "aws_resourceexplorer2_search" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       query_string = Prop.computed __type __id "query_string";
       resource_count = Prop.computed __type __id "resource_count";
       resources = Prop.computed __type __id "resources";
       view_arn = Prop.computed __type __id "view_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_resourceexplorer2_search
        (aws_resourceexplorer2_search ?view_arn ~query_string ());
    attrs = __attrs;
  }

let register ?tf_module ?view_arn ~query_string __id =
  let (r : _ Tf_core.resource) = make ?view_arn ~query_string __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
