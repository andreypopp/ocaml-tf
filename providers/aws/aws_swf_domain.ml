(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_swf_domain = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  workflow_execution_retention_period_in_days : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_swf_domain) -> ()

let yojson_of_aws_swf_domain =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       workflow_execution_retention_period_in_days =
         v_workflow_execution_retention_period_in_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_workflow_execution_retention_period_in_days
         in
         ("workflow_execution_retention_period_in_days", arg) :: bnds
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
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
    : aws_swf_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_swf_domain

[@@@deriving.end]

let aws_swf_domain ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days () :
    aws_swf_domain =
  {
    description;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    workflow_execution_retention_period_in_days;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workflow_execution_retention_period_in_days : string prop;
}

let make ?description ?id ?name ?name_prefix ?tags ?tags_all
    ~workflow_execution_retention_period_in_days __id =
  let __type = "aws_swf_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workflow_execution_retention_period_in_days =
         Prop.computed __type __id
           "workflow_execution_retention_period_in_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_swf_domain
        (aws_swf_domain ?description ?id ?name ?name_prefix ?tags
           ?tags_all ~workflow_execution_retention_period_in_days ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?tags ?tags_all
      ~workflow_execution_retention_period_in_days __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
