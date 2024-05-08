(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_location = {
  s3_bucket_name : string prop;
  s3_key_prefix : string prop option; [@option]
  s3_region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_location) -> ()

let yojson_of_output_location =
  (function
   | {
       s3_bucket_name = v_s3_bucket_name;
       s3_key_prefix = v_s3_key_prefix;
       s3_region = v_s3_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : output_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_location

[@@@deriving.end]

type targets = {
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets) -> ()

let yojson_of_targets =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets

[@@@deriving.end]

type aws_ssm_association = {
  apply_only_at_cron_interval : bool prop option; [@option]
  association_name : string prop option; [@option]
  automation_target_parameter_name : string prop option; [@option]
  compliance_severity : string prop option; [@option]
  document_version : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop option; [@option]
  max_concurrency : string prop option; [@option]
  max_errors : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  schedule_expression : string prop option; [@option]
  sync_compliance : string prop option; [@option]
  wait_for_success_timeout_seconds : float prop option; [@option]
  output_location : output_location list;
      [@default []] [@yojson_drop_default ( = )]
  targets : targets list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_association) -> ()

let yojson_of_aws_ssm_association =
  (function
   | {
       apply_only_at_cron_interval = v_apply_only_at_cron_interval;
       association_name = v_association_name;
       automation_target_parameter_name =
         v_automation_target_parameter_name;
       compliance_severity = v_compliance_severity;
       document_version = v_document_version;
       id = v_id;
       instance_id = v_instance_id;
       max_concurrency = v_max_concurrency;
       max_errors = v_max_errors;
       name = v_name;
       parameters = v_parameters;
       schedule_expression = v_schedule_expression;
       sync_compliance = v_sync_compliance;
       wait_for_success_timeout_seconds =
         v_wait_for_success_timeout_seconds;
       output_location = v_output_location;
       targets = v_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_targets then bnds
         else
           let arg = (yojson_of_list yojson_of_targets) v_targets in
           let bnd = "targets", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_output_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output_location)
               v_output_location
           in
           let bnd = "output_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_success_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wait_for_success_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_compliance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_compliance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_errors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_id", arg in
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
         match v_document_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compliance_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compliance_severity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automation_target_parameter_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "automation_target_parameter_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_association_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "association_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_only_at_cron_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_only_at_cron_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_association -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_association

[@@@deriving.end]

let output_location ?s3_key_prefix ?s3_region ~s3_bucket_name () :
    output_location =
  { s3_bucket_name; s3_key_prefix; s3_region }

let targets ~key ~values () : targets = { key; values }

let aws_ssm_association ?apply_only_at_cron_interval
    ?association_name ?automation_target_parameter_name
    ?compliance_severity ?document_version ?id ?instance_id
    ?max_concurrency ?max_errors ?parameters ?schedule_expression
    ?sync_compliance ?wait_for_success_timeout_seconds
    ?(output_location = []) ?(targets = []) ~name () :
    aws_ssm_association =
  {
    apply_only_at_cron_interval;
    association_name;
    automation_target_parameter_name;
    compliance_severity;
    document_version;
    id;
    instance_id;
    max_concurrency;
    max_errors;
    name;
    parameters;
    schedule_expression;
    sync_compliance;
    wait_for_success_timeout_seconds;
    output_location;
    targets;
  }

type t = {
  tf_name : string;
  apply_only_at_cron_interval : bool prop;
  arn : string prop;
  association_id : string prop;
  association_name : string prop;
  automation_target_parameter_name : string prop;
  compliance_severity : string prop;
  document_version : string prop;
  id : string prop;
  instance_id : string prop;
  max_concurrency : string prop;
  max_errors : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schedule_expression : string prop;
  sync_compliance : string prop;
  wait_for_success_timeout_seconds : float prop;
}

let make ?apply_only_at_cron_interval ?association_name
    ?automation_target_parameter_name ?compliance_severity
    ?document_version ?id ?instance_id ?max_concurrency ?max_errors
    ?parameters ?schedule_expression ?sync_compliance
    ?wait_for_success_timeout_seconds ?(output_location = [])
    ?(targets = []) ~name __id =
  let __type = "aws_ssm_association" in
  let __attrs =
    ({
       tf_name = __id;
       apply_only_at_cron_interval =
         Prop.computed __type __id "apply_only_at_cron_interval";
       arn = Prop.computed __type __id "arn";
       association_id = Prop.computed __type __id "association_id";
       association_name =
         Prop.computed __type __id "association_name";
       automation_target_parameter_name =
         Prop.computed __type __id "automation_target_parameter_name";
       compliance_severity =
         Prop.computed __type __id "compliance_severity";
       document_version =
         Prop.computed __type __id "document_version";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       max_concurrency = Prop.computed __type __id "max_concurrency";
       max_errors = Prop.computed __type __id "max_errors";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       schedule_expression =
         Prop.computed __type __id "schedule_expression";
       sync_compliance = Prop.computed __type __id "sync_compliance";
       wait_for_success_timeout_seconds =
         Prop.computed __type __id "wait_for_success_timeout_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_association
        (aws_ssm_association ?apply_only_at_cron_interval
           ?association_name ?automation_target_parameter_name
           ?compliance_severity ?document_version ?id ?instance_id
           ?max_concurrency ?max_errors ?parameters
           ?schedule_expression ?sync_compliance
           ?wait_for_success_timeout_seconds ~output_location
           ~targets ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_only_at_cron_interval
    ?association_name ?automation_target_parameter_name
    ?compliance_severity ?document_version ?id ?instance_id
    ?max_concurrency ?max_errors ?parameters ?schedule_expression
    ?sync_compliance ?wait_for_success_timeout_seconds
    ?(output_location = []) ?(targets = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?apply_only_at_cron_interval ?association_name
      ?automation_target_parameter_name ?compliance_severity
      ?document_version ?id ?instance_id ?max_concurrency ?max_errors
      ?parameters ?schedule_expression ?sync_compliance
      ?wait_for_success_timeout_seconds ~output_location ~targets
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
