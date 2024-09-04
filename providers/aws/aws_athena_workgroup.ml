(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__engine_version = {
  selected_engine_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__engine_version) -> ()

let yojson_of_configuration__engine_version =
  (function
   | { selected_engine_version = v_selected_engine_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_selected_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selected_engine_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__engine_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__engine_version

[@@@deriving.end]

type configuration__result_configuration__acl_configuration = {
  s3_acl_option : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__result_configuration__acl_configuration) ->
  ()

let yojson_of_configuration__result_configuration__acl_configuration
    =
  (function
   | { s3_acl_option = v_s3_acl_option } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_acl_option in
         ("s3_acl_option", arg) :: bnds
       in
       `Assoc bnds
    : configuration__result_configuration__acl_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__result_configuration__acl_configuration

[@@@deriving.end]

type configuration__result_configuration__encryption_configuration = {
  encryption_option : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__result_configuration__encryption_configuration) ->
  ()

let yojson_of_configuration__result_configuration__encryption_configuration
    =
  (function
   | {
       encryption_option = v_encryption_option;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__result_configuration__encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__result_configuration__encryption_configuration

[@@@deriving.end]

type configuration__result_configuration = {
  expected_bucket_owner : string prop option; [@option]
  output_location : string prop option; [@option]
  acl_configuration :
    configuration__result_configuration__acl_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_configuration :
    configuration__result_configuration__encryption_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__result_configuration) -> ()

let yojson_of_configuration__result_configuration =
  (function
   | {
       expected_bucket_owner = v_expected_bucket_owner;
       output_location = v_output_location;
       acl_configuration = v_acl_configuration;
       encryption_configuration = v_encryption_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__result_configuration__encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_acl_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__result_configuration__acl_configuration)
               v_acl_configuration
           in
           let bnd = "acl_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_output_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__result_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__result_configuration

[@@@deriving.end]

type configuration = {
  bytes_scanned_cutoff_per_query : float prop option; [@option]
  enforce_workgroup_configuration : bool prop option; [@option]
  execution_role : string prop option; [@option]
  publish_cloudwatch_metrics_enabled : bool prop option; [@option]
  requester_pays_enabled : bool prop option; [@option]
  engine_version : configuration__engine_version list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  result_configuration : configuration__result_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       bytes_scanned_cutoff_per_query =
         v_bytes_scanned_cutoff_per_query;
       enforce_workgroup_configuration =
         v_enforce_workgroup_configuration;
       execution_role = v_execution_role;
       publish_cloudwatch_metrics_enabled =
         v_publish_cloudwatch_metrics_enabled;
       requester_pays_enabled = v_requester_pays_enabled;
       engine_version = v_engine_version;
       result_configuration = v_result_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_result_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__result_configuration)
               v_result_configuration
           in
           let bnd = "result_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_engine_version then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration__engine_version)
               v_engine_version
           in
           let bnd = "engine_version", arg in
           bnd :: bnds
       in
       let bnds =
         match v_requester_pays_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requester_pays_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publish_cloudwatch_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish_cloudwatch_metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_workgroup_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_workgroup_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bytes_scanned_cutoff_per_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bytes_scanned_cutoff_per_query", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_athena_workgroup = {
  description : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  state : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_workgroup) -> ()

let yojson_of_aws_athena_workgroup =
  (function
   | {
       description = v_description;
       force_destroy = v_force_destroy;
       id = v_id;
       name = v_name;
       state = v_state;
       tags = v_tags;
       tags_all = v_tags_all;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
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
    : aws_athena_workgroup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_workgroup

[@@@deriving.end]

let configuration__engine_version ?selected_engine_version () :
    configuration__engine_version =
  { selected_engine_version }

let configuration__result_configuration__acl_configuration
    ~s3_acl_option () :
    configuration__result_configuration__acl_configuration =
  { s3_acl_option }

let configuration__result_configuration__encryption_configuration
    ?encryption_option ?kms_key_arn () :
    configuration__result_configuration__encryption_configuration =
  { encryption_option; kms_key_arn }

let configuration__result_configuration ?expected_bucket_owner
    ?output_location ?(acl_configuration = [])
    ?(encryption_configuration = []) () :
    configuration__result_configuration =
  {
    expected_bucket_owner;
    output_location;
    acl_configuration;
    encryption_configuration;
  }

let configuration ?bytes_scanned_cutoff_per_query
    ?enforce_workgroup_configuration ?execution_role
    ?publish_cloudwatch_metrics_enabled ?requester_pays_enabled
    ?(engine_version = []) ?(result_configuration = []) () :
    configuration =
  {
    bytes_scanned_cutoff_per_query;
    enforce_workgroup_configuration;
    execution_role;
    publish_cloudwatch_metrics_enabled;
    requester_pays_enabled;
    engine_version;
    result_configuration;
  }

let aws_athena_workgroup ?description ?force_destroy ?id ?state ?tags
    ?tags_all ?(configuration = []) ~name () : aws_athena_workgroup =
  {
    description;
    force_destroy;
    id;
    name;
    state;
    tags;
    tags_all;
    configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?force_destroy ?id ?state ?tags ?tags_all
    ?(configuration = []) ~name __id =
  let __type = "aws_athena_workgroup" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_workgroup
        (aws_athena_workgroup ?description ?force_destroy ?id ?state
           ?tags ?tags_all ~configuration ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?state ?tags
    ?tags_all ?(configuration = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?state ?tags ?tags_all
      ~configuration ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
