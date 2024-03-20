(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_targets = {
  organizational_unit_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_targets) -> ()

let yojson_of_deployment_targets =
  (function
   | { organizational_unit_ids = v_organizational_unit_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_organizational_unit_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "organizational_unit_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_targets

[@@@deriving.end]

type operation_preferences = {
  failure_tolerance_count : float prop option; [@option]
  failure_tolerance_percentage : float prop option; [@option]
  max_concurrent_count : float prop option; [@option]
  max_concurrent_percentage : float prop option; [@option]
  region_concurrency_type : string prop option; [@option]
  region_order : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : operation_preferences) -> ()

let yojson_of_operation_preferences =
  (function
   | {
       failure_tolerance_count = v_failure_tolerance_count;
       failure_tolerance_percentage = v_failure_tolerance_percentage;
       max_concurrent_count = v_max_concurrent_count;
       max_concurrent_percentage = v_max_concurrent_percentage;
       region_concurrency_type = v_region_concurrency_type;
       region_order = v_region_order;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "region_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region_concurrency_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region_concurrency_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_tolerance_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_tolerance_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_tolerance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_tolerance_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : operation_preferences -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_operation_preferences

[@@@deriving.end]

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

type stack_instance_summaries = {
  account_id : string prop;
  organizational_unit_id : string prop;
  stack_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stack_instance_summaries) -> ()

let yojson_of_stack_instance_summaries =
  (function
   | {
       account_id = v_account_id;
       organizational_unit_id = v_organizational_unit_id;
       stack_id = v_stack_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organizational_unit_id
         in
         ("organizational_unit_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : stack_instance_summaries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stack_instance_summaries

[@@@deriving.end]

type aws_cloudformation_stack_set_instance = {
  account_id : string prop option; [@option]
  call_as : string prop option; [@option]
  id : string prop option; [@option]
  parameter_overrides : (string * string prop) list option; [@option]
  region : string prop option; [@option]
  retain_stack : bool prop option; [@option]
  stack_set_name : string prop;
  deployment_targets : deployment_targets list;
  operation_preferences : operation_preferences list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_stack_set_instance) -> ()

let yojson_of_aws_cloudformation_stack_set_instance =
  (function
   | {
       account_id = v_account_id;
       call_as = v_call_as;
       id = v_id;
       parameter_overrides = v_parameter_overrides;
       region = v_region;
       retain_stack = v_retain_stack;
       stack_set_name = v_stack_set_name;
       deployment_targets = v_deployment_targets;
       operation_preferences = v_operation_preferences;
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
         let arg =
           yojson_of_list yojson_of_operation_preferences
             v_operation_preferences
         in
         ("operation_preferences", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment_targets
             v_deployment_targets
         in
         ("deployment_targets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_stack_set_name
         in
         ("stack_set_name", arg) :: bnds
       in
       let bnds =
         match v_retain_stack with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_stack", arg in
             bnd :: bnds
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
         match v_parameter_overrides with
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
             let bnd = "parameter_overrides", arg in
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
         match v_call_as with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "call_as", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudformation_stack_set_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_stack_set_instance

[@@@deriving.end]

let deployment_targets ?organizational_unit_ids () :
    deployment_targets =
  { organizational_unit_ids }

let operation_preferences ?failure_tolerance_count
    ?failure_tolerance_percentage ?max_concurrent_count
    ?max_concurrent_percentage ?region_concurrency_type ?region_order
    () : operation_preferences =
  {
    failure_tolerance_count;
    failure_tolerance_percentage;
    max_concurrent_count;
    max_concurrent_percentage;
    region_concurrency_type;
    region_order;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudformation_stack_set_instance ?account_id ?call_as ?id
    ?parameter_overrides ?region ?retain_stack ?timeouts
    ~stack_set_name ~deployment_targets ~operation_preferences () :
    aws_cloudformation_stack_set_instance =
  {
    account_id;
    call_as;
    id;
    parameter_overrides;
    region;
    retain_stack;
    stack_set_name;
    deployment_targets;
    operation_preferences;
    timeouts;
  }

type t = {
  account_id : string prop;
  call_as : string prop;
  id : string prop;
  organizational_unit_id : string prop;
  parameter_overrides : (string * string) list prop;
  region : string prop;
  retain_stack : bool prop;
  stack_id : string prop;
  stack_instance_summaries : stack_instance_summaries list prop;
  stack_set_name : string prop;
}

let make ?account_id ?call_as ?id ?parameter_overrides ?region
    ?retain_stack ?timeouts ~stack_set_name ~deployment_targets
    ~operation_preferences __id =
  let __type = "aws_cloudformation_stack_set_instance" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       call_as = Prop.computed __type __id "call_as";
       id = Prop.computed __type __id "id";
       organizational_unit_id =
         Prop.computed __type __id "organizational_unit_id";
       parameter_overrides =
         Prop.computed __type __id "parameter_overrides";
       region = Prop.computed __type __id "region";
       retain_stack = Prop.computed __type __id "retain_stack";
       stack_id = Prop.computed __type __id "stack_id";
       stack_instance_summaries =
         Prop.computed __type __id "stack_instance_summaries";
       stack_set_name = Prop.computed __type __id "stack_set_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_stack_set_instance
        (aws_cloudformation_stack_set_instance ?account_id ?call_as
           ?id ?parameter_overrides ?region ?retain_stack ?timeouts
           ~stack_set_name ~deployment_targets ~operation_preferences
           ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?call_as ?id ?parameter_overrides
    ?region ?retain_stack ?timeouts ~stack_set_name
    ~deployment_targets ~operation_preferences __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?call_as ?id ?parameter_overrides ?region
      ?retain_stack ?timeouts ~stack_set_name ~deployment_targets
      ~operation_preferences __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
