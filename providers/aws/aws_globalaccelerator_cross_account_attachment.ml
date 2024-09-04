(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource = {
  cidr_block : string prop option; [@option]
  endpoint_id : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource) -> ()

let yojson_of_resource =
  (function
   | {
       cidr_block = v_cidr_block;
       endpoint_id = v_endpoint_id;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource

[@@@deriving.end]

type aws_globalaccelerator_cross_account_attachment = {
  name : string prop;
  principals : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  resource : resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_globalaccelerator_cross_account_attachment) -> ()

let yojson_of_aws_globalaccelerator_cross_account_attachment =
  (function
   | {
       name = v_name;
       principals = v_principals;
       tags = v_tags;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource) v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "principals", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_cross_account_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_cross_account_attachment

[@@@deriving.end]

let resource ?cidr_block ?endpoint_id ?region () : resource =
  { cidr_block; endpoint_id; region }

let aws_globalaccelerator_cross_account_attachment ?principals ?tags
    ~name ~resource () :
    aws_globalaccelerator_cross_account_attachment =
  { name; principals; tags; resource }

type t = {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
  principals : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?principals ?tags ~name ~resource __id =
  let __type = "aws_globalaccelerator_cross_account_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       id = Prop.computed __type __id "id";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       name = Prop.computed __type __id "name";
       principals = Prop.computed __type __id "principals";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_cross_account_attachment
        (aws_globalaccelerator_cross_account_attachment ?principals
           ?tags ~name ~resource ());
    attrs = __attrs;
  }

let register ?tf_module ?principals ?tags ~name ~resource __id =
  let (r : _ Tf_core.resource) =
    make ?principals ?tags ~name ~resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
