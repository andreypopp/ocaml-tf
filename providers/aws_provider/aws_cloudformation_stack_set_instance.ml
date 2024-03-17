(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudformation_stack_set_instance__deployment_targets = {
  organizational_unit_ids : string list option; [@option]
      (** organizational_unit_ids *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set_instance__deployment_targets *)

type aws_cloudformation_stack_set_instance__operation_preferences = {
  failure_tolerance_count : float option; [@option]
      (** failure_tolerance_count *)
  failure_tolerance_percentage : float option; [@option]
      (** failure_tolerance_percentage *)
  max_concurrent_count : float option; [@option]
      (** max_concurrent_count *)
  max_concurrent_percentage : float option; [@option]
      (** max_concurrent_percentage *)
  region_concurrency_type : string option; [@option]
      (** region_concurrency_type *)
  region_order : string list option; [@option]  (** region_order *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set_instance__operation_preferences *)

type aws_cloudformation_stack_set_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set_instance__timeouts *)

type aws_cloudformation_stack_set_instance__stack_instance_summaries = {
  account_id : string;  (** account_id *)
  organizational_unit_id : string;  (** organizational_unit_id *)
  stack_id : string;  (** stack_id *)
}
[@@deriving yojson_of]

type aws_cloudformation_stack_set_instance = {
  call_as : string option; [@option]  (** call_as *)
  parameter_overrides : (string * string) list option; [@option]
      (** parameter_overrides *)
  retain_stack : bool option; [@option]  (** retain_stack *)
  stack_set_name : string;  (** stack_set_name *)
  deployment_targets :
    aws_cloudformation_stack_set_instance__deployment_targets list;
  operation_preferences :
    aws_cloudformation_stack_set_instance__operation_preferences list;
  timeouts : aws_cloudformation_stack_set_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set_instance *)

let aws_cloudformation_stack_set_instance ?call_as
    ?parameter_overrides ?retain_stack ?timeouts ~stack_set_name
    ~deployment_targets ~operation_preferences __resource_id =
  let __resource_type = "aws_cloudformation_stack_set_instance" in
  let __resource =
    {
      call_as;
      parameter_overrides;
      retain_stack;
      stack_set_name;
      deployment_targets;
      operation_preferences;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack_set_instance __resource);
  ()
