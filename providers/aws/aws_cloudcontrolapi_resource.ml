(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_cloudcontrolapi_resource = {
  desired_state : string prop;
  id : string prop option; [@option]
  role_arn : string prop option; [@option]
  schema : string prop option; [@option]
  type_name : string prop;
  type_version_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudcontrolapi_resource) -> ()

let yojson_of_aws_cloudcontrolapi_resource =
  (function
   | {
       desired_state = v_desired_state;
       id = v_id;
       role_arn = v_role_arn;
       schema = v_schema;
       type_name = v_type_name;
       type_version_id = v_type_version_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_type_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_version_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_name in
         ("type_name", arg) :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_desired_state in
         ("desired_state", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudcontrolapi_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudcontrolapi_resource

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudcontrolapi_resource ?id ?role_arn ?schema
    ?type_version_id ?timeouts ~desired_state ~type_name () :
    aws_cloudcontrolapi_resource =
  {
    desired_state;
    id;
    role_arn;
    schema;
    type_name;
    type_version_id;
    timeouts;
  }

type t = {
  tf_name : string;
  desired_state : string prop;
  id : string prop;
  properties : string prop;
  role_arn : string prop;
  schema : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

let make ?id ?role_arn ?schema ?type_version_id ?timeouts
    ~desired_state ~type_name __id =
  let __type = "aws_cloudcontrolapi_resource" in
  let __attrs =
    ({
       tf_name = __id;
       desired_state = Prop.computed __type __id "desired_state";
       id = Prop.computed __type __id "id";
       properties = Prop.computed __type __id "properties";
       role_arn = Prop.computed __type __id "role_arn";
       schema = Prop.computed __type __id "schema";
       type_name = Prop.computed __type __id "type_name";
       type_version_id = Prop.computed __type __id "type_version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudcontrolapi_resource
        (aws_cloudcontrolapi_resource ?id ?role_arn ?schema
           ?type_version_id ?timeouts ~desired_state ~type_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_arn ?schema ?type_version_id
    ?timeouts ~desired_state ~type_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_arn ?schema ?type_version_id ?timeouts
      ~desired_state ~type_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
