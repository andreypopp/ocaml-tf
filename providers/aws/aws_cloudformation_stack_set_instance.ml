(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?account_id ?call_as ?id ?parameter_overrides
    ?region ?retain_stack ?timeouts ~stack_set_name
    ~deployment_targets ~operation_preferences __resource_id =
  let __resource_type = "aws_cloudformation_stack_set_instance" in
  let __resource =
    aws_cloudformation_stack_set_instance ?account_id ?call_as ?id
      ?parameter_overrides ?region ?retain_stack ?timeouts
      ~stack_set_name ~deployment_targets ~operation_preferences ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack_set_instance __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       call_as =
         Prop.computed __resource_type __resource_id "call_as";
       id = Prop.computed __resource_type __resource_id "id";
       organizational_unit_id =
         Prop.computed __resource_type __resource_id
           "organizational_unit_id";
       parameter_overrides =
         Prop.computed __resource_type __resource_id
           "parameter_overrides";
       region = Prop.computed __resource_type __resource_id "region";
       retain_stack =
         Prop.computed __resource_type __resource_id "retain_stack";
       stack_id =
         Prop.computed __resource_type __resource_id "stack_id";
       stack_instance_summaries =
         Prop.computed __resource_type __resource_id
           "stack_instance_summaries";
       stack_set_name =
         Prop.computed __resource_type __resource_id "stack_set_name";
     }
      : t)
  in
  __resource_attributes
