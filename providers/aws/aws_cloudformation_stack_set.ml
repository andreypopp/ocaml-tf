(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_deployment = {
  enabled : bool prop option; [@option]
  retain_stacks_on_account_removal : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_deployment) -> ()

let yojson_of_auto_deployment =
  (function
   | {
       enabled = v_enabled;
       retain_stacks_on_account_removal =
         v_retain_stacks_on_account_removal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retain_stacks_on_account_removal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_stacks_on_account_removal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_deployment

[@@@deriving.end]

type managed_execution = { active : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_execution) -> ()

let yojson_of_managed_execution =
  (function
   | { active = v_active } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_execution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_execution

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

type timeouts = { update : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { update = v_update } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_cloudformation_stack_set = {
  administration_role_arn : string prop option; [@option]
  call_as : string prop option; [@option]
  capabilities : string prop list option; [@option]
  description : string prop option; [@option]
  execution_role_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  permission_model : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  template_body : string prop option; [@option]
  template_url : string prop option; [@option]
  auto_deployment : auto_deployment list;
  managed_execution : managed_execution list;
  operation_preferences : operation_preferences list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_stack_set) -> ()

let yojson_of_aws_cloudformation_stack_set =
  (function
   | {
       administration_role_arn = v_administration_role_arn;
       call_as = v_call_as;
       capabilities = v_capabilities;
       description = v_description;
       execution_role_name = v_execution_role_name;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       permission_model = v_permission_model;
       tags = v_tags;
       tags_all = v_tags_all;
       template_body = v_template_body;
       template_url = v_template_url;
       auto_deployment = v_auto_deployment;
       managed_execution = v_managed_execution;
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
           yojson_of_list yojson_of_managed_execution
             v_managed_execution
         in
         ("managed_execution", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_deployment v_auto_deployment
         in
         ("auto_deployment", arg) :: bnds
       in
       let bnds =
         match v_template_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permission_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission_model", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role_name", arg in
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
       let bnds =
         match v_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "capabilities", arg in
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
         match v_administration_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administration_role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudformation_stack_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_stack_set

[@@@deriving.end]

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
