(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_config = {
  log_group_name : string prop;
  log_role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | {
       log_group_name = v_log_group_name;
       log_role_arn = v_log_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_role_arn in
         ("log_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type aws_cloudformation_type = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  type_name : string prop option; [@option]
  version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_type) -> ()

let yojson_of_aws_cloudformation_type =
  (function
   | {
       arn = v_arn;
       id = v_id;
       type_ = v_type_;
       type_name = v_type_name;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudformation_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_type

[@@@deriving.end]

let aws_cloudformation_type ?arn ?id ?type_ ?type_name ?version_id ()
    : aws_cloudformation_type =
  { arn; id; type_; type_name; version_id }

type t = {
  arn : string prop;
  default_version_id : string prop;
  deprecated_status : string prop;
  description : string prop;
  documentation_url : string prop;
  execution_role_arn : string prop;
  id : string prop;
  is_default_version : bool prop;
  logging_config : logging_config list prop;
  provisioning_type : string prop;
  schema : string prop;
  source_url : string prop;
  type_ : string prop;
  type_arn : string prop;
  type_name : string prop;
  version_id : string prop;
  visibility : string prop;
}

let make ?arn ?id ?type_ ?type_name ?version_id __id =
  let __type = "aws_cloudformation_type" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_version_id =
         Prop.computed __type __id "default_version_id";
       deprecated_status =
         Prop.computed __type __id "deprecated_status";
       description = Prop.computed __type __id "description";
       documentation_url =
         Prop.computed __type __id "documentation_url";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       is_default_version =
         Prop.computed __type __id "is_default_version";
       logging_config = Prop.computed __type __id "logging_config";
       provisioning_type =
         Prop.computed __type __id "provisioning_type";
       schema = Prop.computed __type __id "schema";
       source_url = Prop.computed __type __id "source_url";
       type_ = Prop.computed __type __id "type";
       type_arn = Prop.computed __type __id "type_arn";
       type_name = Prop.computed __type __id "type_name";
       version_id = Prop.computed __type __id "version_id";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_type
        (aws_cloudformation_type ?arn ?id ?type_ ?type_name
           ?version_id ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?type_ ?type_name ?version_id __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?type_ ?type_name ?version_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
