(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_deployment = {
  enabled : bool prop option; [@option]  (** enabled *)
  retain_stacks_on_account_removal : bool prop option; [@option]
      (** retain_stacks_on_account_removal *)
}
[@@deriving yojson_of]
(** auto_deployment *)

type managed_execution = {
  active : bool prop option; [@option]  (** active *)
}
[@@deriving yojson_of]
(** managed_execution *)

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
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudformation_stack_set = {
  administration_role_arn : string prop option; [@option]
      (** administration_role_arn *)
  call_as : string prop option; [@option]  (** call_as *)
  capabilities : string prop list option; [@option]
      (** capabilities *)
  description : string prop option; [@option]  (** description *)
  execution_role_name : string prop option; [@option]
      (** execution_role_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  permission_model : string prop option; [@option]
      (** permission_model *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  template_body : string prop option; [@option]  (** template_body *)
  template_url : string prop option; [@option]  (** template_url *)
  auto_deployment : auto_deployment list;
  managed_execution : managed_execution list;
  operation_preferences : operation_preferences list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack_set *)

let auto_deployment ?enabled ?retain_stacks_on_account_removal () :
    auto_deployment =
  { enabled; retain_stacks_on_account_removal }

let managed_execution ?active () : managed_execution = { active }

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

let timeouts ?update () : timeouts = { update }

let aws_cloudformation_stack_set ?administration_role_arn ?call_as
    ?capabilities ?description ?execution_role_name ?id ?parameters
    ?permission_model ?tags ?tags_all ?template_body ?template_url
    ?timeouts ~name ~auto_deployment ~managed_execution
    ~operation_preferences () : aws_cloudformation_stack_set =
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

type t = {
  administration_role_arn : string prop;
  arn : string prop;
  call_as : string prop;
  capabilities : string list prop;
  description : string prop;
  execution_role_name : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  permission_model : string prop;
  stack_set_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  template_url : string prop;
}

let make ?administration_role_arn ?call_as ?capabilities ?description
    ?execution_role_name ?id ?parameters ?permission_model ?tags
    ?tags_all ?template_body ?template_url ?timeouts ~name
    ~auto_deployment ~managed_execution ~operation_preferences __id =
  let __type = "aws_cloudformation_stack_set" in
  let __attrs =
    ({
       administration_role_arn =
         Prop.computed __type __id "administration_role_arn";
       arn = Prop.computed __type __id "arn";
       call_as = Prop.computed __type __id "call_as";
       capabilities = Prop.computed __type __id "capabilities";
       description = Prop.computed __type __id "description";
       execution_role_name =
         Prop.computed __type __id "execution_role_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       permission_model =
         Prop.computed __type __id "permission_model";
       stack_set_id = Prop.computed __type __id "stack_set_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       template_body = Prop.computed __type __id "template_body";
       template_url = Prop.computed __type __id "template_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_stack_set
        (aws_cloudformation_stack_set ?administration_role_arn
           ?call_as ?capabilities ?description ?execution_role_name
           ?id ?parameters ?permission_model ?tags ?tags_all
           ?template_body ?template_url ?timeouts ~name
           ~auto_deployment ~managed_execution ~operation_preferences
           ());
    attrs = __attrs;
  }

let register ?tf_module ?administration_role_arn ?call_as
    ?capabilities ?description ?execution_role_name ?id ?parameters
    ?permission_model ?tags ?tags_all ?template_body ?template_url
    ?timeouts ~name ~auto_deployment ~managed_execution
    ~operation_preferences __id =
  let (r : _ Tf_core.resource) =
    make ?administration_role_arn ?call_as ?capabilities ?description
      ?execution_role_name ?id ?parameters ?permission_model ?tags
      ?tags_all ?template_body ?template_url ?timeouts ~name
      ~auto_deployment ~managed_execution ~operation_preferences __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
