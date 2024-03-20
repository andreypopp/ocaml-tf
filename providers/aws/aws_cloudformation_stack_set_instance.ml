(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_targets = {
  organizational_unit_ids : string prop list option; [@option]
      (** organizational_unit_ids *)
}
[@@deriving yojson_of]
(** deployment_targets *)

type operation_preferences = {
  failure_tolerance_count : float prop option; [@option]
      (** failure_tolerance_count *)
  failure_tolerance_percentage : float prop option; [@option]
      (** failure_tolerance_percentage *)
  max_concurrent_count : float prop option; [@option]
      (** max_concurrent_count *)
  max_concurrent_percentage : float prop option; [@option]
      (** max_concurrent_percentage *)
  region_concurrency_type : string prop option; [@option]
      (** region_concurrency_type *)
  region_order : string prop list option; [@option]
      (** region_order *)
}
[@@deriving yojson_of]
(** operation_preferences *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type stack_instance_summaries = {
  account_id : string prop;  (** account_id *)
  organizational_unit_id : string prop;
      (** organizational_unit_id *)
  stack_id : string prop;  (** stack_id *)
}
[@@deriving yojson_of]

type aws_cloudformation_stack_set_instance = {
  account_id : string prop option; [@option]  (** account_id *)
  call_as : string prop option; [@option]  (** call_as *)
  id : string prop option; [@option]  (** id *)
  parameter_overrides : (string * string prop) list option; [@option]
      (** parameter_overrides *)
  region : string prop option; [@option]  (** region *)
  retain_stack : bool prop option; [@option]  (** retain_stack *)
  stack_set_name : string prop;  (** stack_set_name *)
  deployment_targets : deployment_targets list;
  operation_preferences : operation_preferences list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set_instance *)

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
