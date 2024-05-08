(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type provisioning_parameters = {
  key : string prop;
  use_previous_value : bool prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : provisioning_parameters) -> ()

let yojson_of_provisioning_parameters =
  (function
   | {
       key = v_key;
       use_previous_value = v_use_previous_value;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_previous_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_previous_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : provisioning_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_provisioning_parameters

[@@@deriving.end]

type stack_set_provisioning_preferences = {
  accounts : string prop list option; [@option]
  failure_tolerance_count : float prop option; [@option]
  failure_tolerance_percentage : float prop option; [@option]
  max_concurrency_count : float prop option; [@option]
  max_concurrency_percentage : float prop option; [@option]
  regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stack_set_provisioning_preferences) -> ()

let yojson_of_stack_set_provisioning_preferences =
  (function
   | {
       accounts = v_accounts;
       failure_tolerance_count = v_failure_tolerance_count;
       failure_tolerance_percentage = v_failure_tolerance_percentage;
       max_concurrency_count = v_max_concurrency_count;
       max_concurrency_percentage = v_max_concurrency_percentage;
       regions = v_regions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrency_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrency_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrency_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrency_count", arg in
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
       let bnds =
         match v_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accounts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stack_set_provisioning_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stack_set_provisioning_preferences

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type outputs = {
  description : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs) -> ()

let yojson_of_outputs =
  (function
   | { description = v_description; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : outputs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs

[@@@deriving.end]

type aws_servicecatalog_provisioned_product = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  ignore_errors : bool prop option; [@option]
  name : string prop;
  notification_arns : string prop list option; [@option]
  path_id : string prop option; [@option]
  path_name : string prop option; [@option]
  product_id : string prop option; [@option]
  product_name : string prop option; [@option]
  provisioning_artifact_id : string prop option; [@option]
  provisioning_artifact_name : string prop option; [@option]
  retain_physical_resources : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  provisioning_parameters : provisioning_parameters list;
      [@default []] [@yojson_drop_default ( = )]
  stack_set_provisioning_preferences :
    stack_set_provisioning_preferences list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_provisioned_product) -> ()

let yojson_of_aws_servicecatalog_provisioned_product =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       ignore_errors = v_ignore_errors;
       name = v_name;
       notification_arns = v_notification_arns;
       path_id = v_path_id;
       path_name = v_path_name;
       product_id = v_product_id;
       product_name = v_product_name;
       provisioning_artifact_id = v_provisioning_artifact_id;
       provisioning_artifact_name = v_provisioning_artifact_name;
       retain_physical_resources = v_retain_physical_resources;
       tags = v_tags;
       tags_all = v_tags_all;
       provisioning_parameters = v_provisioning_parameters;
       stack_set_provisioning_preferences =
         v_stack_set_provisioning_preferences;
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
         if [] = v_stack_set_provisioning_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_stack_set_provisioning_preferences)
               v_stack_set_provisioning_preferences
           in
           let bnd = "stack_set_provisioning_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_provisioning_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_provisioning_parameters)
               v_provisioning_parameters
           in
           let bnd = "provisioning_parameters", arg in
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
         match v_retain_physical_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_physical_resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioning_artifact_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_artifact_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioning_artifact_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_artifact_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_product_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_product_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ignore_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_errors", arg in
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
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_provisioned_product ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_provisioned_product

[@@@deriving.end]

let provisioning_parameters ?use_previous_value ?value ~key () :
    provisioning_parameters =
  { key; use_previous_value; value }

let stack_set_provisioning_preferences ?accounts
    ?failure_tolerance_count ?failure_tolerance_percentage
    ?max_concurrency_count ?max_concurrency_percentage ?regions () :
    stack_set_provisioning_preferences =
  {
    accounts;
    failure_tolerance_count;
    failure_tolerance_percentage;
    max_concurrency_count;
    max_concurrency_percentage;
    regions;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_provisioned_product ?accept_language ?id
    ?ignore_errors ?notification_arns ?path_id ?path_name ?product_id
    ?product_name ?provisioning_artifact_id
    ?provisioning_artifact_name ?retain_physical_resources ?tags
    ?tags_all ?(provisioning_parameters = [])
    ?(stack_set_provisioning_preferences = []) ?timeouts ~name () :
    aws_servicecatalog_provisioned_product =
  {
    accept_language;
    id;
    ignore_errors;
    name;
    notification_arns;
    path_id;
    path_name;
    product_id;
    product_name;
    provisioning_artifact_id;
    provisioning_artifact_name;
    retain_physical_resources;
    tags;
    tags_all;
    provisioning_parameters;
    stack_set_provisioning_preferences;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_language : string prop;
  arn : string prop;
  cloudwatch_dashboard_names : string list prop;
  created_time : string prop;
  id : string prop;
  ignore_errors : bool prop;
  last_provisioning_record_id : string prop;
  last_record_id : string prop;
  last_successful_provisioning_record_id : string prop;
  launch_role_arn : string prop;
  name : string prop;
  notification_arns : string list prop;
  outputs : outputs list prop;
  path_id : string prop;
  path_name : string prop;
  product_id : string prop;
  product_name : string prop;
  provisioning_artifact_id : string prop;
  provisioning_artifact_name : string prop;
  retain_physical_resources : bool prop;
  status : string prop;
  status_message : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?accept_language ?id ?ignore_errors ?notification_arns
    ?path_id ?path_name ?product_id ?product_name
    ?provisioning_artifact_id ?provisioning_artifact_name
    ?retain_physical_resources ?tags ?tags_all
    ?(provisioning_parameters = [])
    ?(stack_set_provisioning_preferences = []) ?timeouts ~name __id =
  let __type = "aws_servicecatalog_provisioned_product" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       arn = Prop.computed __type __id "arn";
       cloudwatch_dashboard_names =
         Prop.computed __type __id "cloudwatch_dashboard_names";
       created_time = Prop.computed __type __id "created_time";
       id = Prop.computed __type __id "id";
       ignore_errors = Prop.computed __type __id "ignore_errors";
       last_provisioning_record_id =
         Prop.computed __type __id "last_provisioning_record_id";
       last_record_id = Prop.computed __type __id "last_record_id";
       last_successful_provisioning_record_id =
         Prop.computed __type __id
           "last_successful_provisioning_record_id";
       launch_role_arn = Prop.computed __type __id "launch_role_arn";
       name = Prop.computed __type __id "name";
       notification_arns =
         Prop.computed __type __id "notification_arns";
       outputs = Prop.computed __type __id "outputs";
       path_id = Prop.computed __type __id "path_id";
       path_name = Prop.computed __type __id "path_name";
       product_id = Prop.computed __type __id "product_id";
       product_name = Prop.computed __type __id "product_name";
       provisioning_artifact_id =
         Prop.computed __type __id "provisioning_artifact_id";
       provisioning_artifact_name =
         Prop.computed __type __id "provisioning_artifact_name";
       retain_physical_resources =
         Prop.computed __type __id "retain_physical_resources";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_provisioned_product
        (aws_servicecatalog_provisioned_product ?accept_language ?id
           ?ignore_errors ?notification_arns ?path_id ?path_name
           ?product_id ?product_name ?provisioning_artifact_id
           ?provisioning_artifact_name ?retain_physical_resources
           ?tags ?tags_all ~provisioning_parameters
           ~stack_set_provisioning_preferences ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?ignore_errors
    ?notification_arns ?path_id ?path_name ?product_id ?product_name
    ?provisioning_artifact_id ?provisioning_artifact_name
    ?retain_physical_resources ?tags ?tags_all
    ?(provisioning_parameters = [])
    ?(stack_set_provisioning_preferences = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?ignore_errors ?notification_arns
      ?path_id ?path_name ?product_id ?product_name
      ?provisioning_artifact_id ?provisioning_artifact_name
      ?retain_physical_resources ?tags ?tags_all
      ~provisioning_parameters ~stack_set_provisioning_preferences
      ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
