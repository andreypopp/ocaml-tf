(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudformation_stack_set__auto_deployment = {
  enabled : bool option; [@option]  (** enabled *)
  retain_stacks_on_account_removal : bool option; [@option]
      (** retain_stacks_on_account_removal *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set__auto_deployment *)

type aws_cloudformation_stack_set__managed_execution = {
  active : bool option; [@option]  (** active *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set__managed_execution *)

type aws_cloudformation_stack_set__operation_preferences = {
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
(** aws_cloudformation_stack_set__operation_preferences *)

type aws_cloudformation_stack_set__timeouts = {
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set__timeouts *)

type aws_cloudformation_stack_set = {
  administration_role_arn : string option; [@option]
      (** administration_role_arn *)
  call_as : string option; [@option]  (** call_as *)
  capabilities : string list option; [@option]  (** capabilities *)
  description : string option; [@option]  (** description *)
  execution_role_name : string option; [@option]
      (** execution_role_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  permission_model : string option; [@option]
      (** permission_model *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  template_body : string option; [@option]  (** template_body *)
  template_url : string option; [@option]  (** template_url *)
  auto_deployment :
    aws_cloudformation_stack_set__auto_deployment list;
  managed_execution :
    aws_cloudformation_stack_set__managed_execution list;
  operation_preferences :
    aws_cloudformation_stack_set__operation_preferences list;
  timeouts : aws_cloudformation_stack_set__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set *)

let aws_cloudformation_stack_set ?administration_role_arn ?call_as
    ?capabilities ?description ?execution_role_name ?id ?parameters
    ?permission_model ?tags ?tags_all ?template_body ?template_url
    ?timeouts ~name ~auto_deployment ~managed_execution
    ~operation_preferences __resource_id =
  let __resource_type = "aws_cloudformation_stack_set" in
  let __resource =
    {
      administration_role_arn;
      call_as;
      capabilities;
      description;
      execution_role_name;
      id;
      name;
      parameters;
      permission_model;
      tags;
      tags_all;
      template_body;
      template_url;
      auto_deployment;
      managed_execution;
      operation_preferences;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack_set __resource);
  ()
