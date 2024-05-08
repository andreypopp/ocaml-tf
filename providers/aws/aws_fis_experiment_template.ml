(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__parameter = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : action__parameter) -> ()

let yojson_of_action__parameter =
  (function
   | { key = v_key; value = v_value } ->
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
       `Assoc bnds
    : action__parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__parameter

[@@@deriving.end]

type action__target = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : action__target) -> ()

let yojson_of_action__target =
  (function
   | { key = v_key; value = v_value } ->
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
       `Assoc bnds
    : action__target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__target

[@@@deriving.end]

type action = {
  action_id : string prop;
  description : string prop option; [@option]
  name : string prop;
  start_after : string prop list option; [@option]
  parameter : action__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       action_id = v_action_id;
       description = v_description;
       name = v_name;
       start_after = v_start_after;
       parameter = v_parameter;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action__target) v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action__parameter) v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "start_after", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_action_id in
         ("action_id", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type log_configuration__cloudwatch_logs_configuration = {
  log_group_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : log_configuration__cloudwatch_logs_configuration) -> ()

let yojson_of_log_configuration__cloudwatch_logs_configuration =
  (function
   | { log_group_arn = v_log_group_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_group_arn in
         ("log_group_arn", arg) :: bnds
       in
       `Assoc bnds
    : log_configuration__cloudwatch_logs_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_configuration__cloudwatch_logs_configuration

[@@@deriving.end]

type log_configuration__s3_configuration = {
  bucket_name : string prop;
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_configuration__s3_configuration) -> ()

let yojson_of_log_configuration__s3_configuration =
  (function
   | { bucket_name = v_bucket_name; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : log_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_configuration__s3_configuration

[@@@deriving.end]

type log_configuration = {
  log_schema_version : float prop;
  cloudwatch_logs_configuration :
    log_configuration__cloudwatch_logs_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration : log_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_configuration) -> ()

let yojson_of_log_configuration =
  (function
   | {
       log_schema_version = v_log_schema_version;
       cloudwatch_logs_configuration =
         v_cloudwatch_logs_configuration;
       s3_configuration = v_s3_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_log_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logs_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_log_configuration__cloudwatch_logs_configuration)
               v_cloudwatch_logs_configuration
           in
           let bnd = "cloudwatch_logs_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_log_schema_version
         in
         ("log_schema_version", arg) :: bnds
       in
       `Assoc bnds
    : log_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_configuration

[@@@deriving.end]

type stop_condition = {
  source : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stop_condition) -> ()

let yojson_of_stop_condition =
  (function
   | { source = v_source; value = v_value } ->
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
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : stop_condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stop_condition

[@@@deriving.end]

type target__filter = {
  path : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__filter) -> ()

let yojson_of_target__filter =
  (function
   | { path = v_path; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : target__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__filter

[@@@deriving.end]

type target__resource_tag = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__resource_tag) -> ()

let yojson_of_target__resource_tag =
  (function
   | { key = v_key; value = v_value } ->
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
       `Assoc bnds
    : target__resource_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__resource_tag

[@@@deriving.end]

type target = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  resource_arns : string prop list option; [@option]
  resource_type : string prop;
  selection_mode : string prop;
  filter : target__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_tag : target__resource_tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | {
       name = v_name;
       parameters = v_parameters;
       resource_arns = v_resource_arns;
       resource_type = v_resource_type;
       selection_mode = v_selection_mode;
       filter = v_filter;
       resource_tag = v_resource_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_tag then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__resource_tag)
               v_resource_tag
           in
           let bnd = "resource_tag", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__filter) v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_selection_mode
         in
         ("selection_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         match v_resource_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_arns", arg in
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
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

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

type aws_fis_experiment_template = {
  description : string prop;
  id : string prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action : action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_configuration : log_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stop_condition : stop_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fis_experiment_template) -> ()

let yojson_of_aws_fis_experiment_template =
  (function
   | {
       description = v_description;
       id = v_id;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       action = v_action;
       log_configuration = v_log_configuration;
       stop_condition = v_stop_condition;
       target = v_target;
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
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg = (yojson_of_list yojson_of_target) v_target in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stop_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stop_condition)
               v_stop_condition
           in
           let bnd = "stop_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_configuration)
               v_log_configuration
           in
           let bnd = "log_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg = (yojson_of_list yojson_of_action) v_action in
           let bnd = "action", arg in
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_fis_experiment_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fis_experiment_template

[@@@deriving.end]

let action__parameter ~key ~value () : action__parameter =
  { key; value }

let action__target ~key ~value () : action__target = { key; value }

let action ?description ?start_after ?(target = []) ~action_id ~name
    ~parameter () : action =
  { action_id; description; name; start_after; parameter; target }

let log_configuration__cloudwatch_logs_configuration ~log_group_arn
    () : log_configuration__cloudwatch_logs_configuration =
  { log_group_arn }

let log_configuration__s3_configuration ?prefix ~bucket_name () :
    log_configuration__s3_configuration =
  { bucket_name; prefix }

let log_configuration ?(cloudwatch_logs_configuration = [])
    ?(s3_configuration = []) ~log_schema_version () :
    log_configuration =
  {
    log_schema_version;
    cloudwatch_logs_configuration;
    s3_configuration;
  }

let stop_condition ?value ~source () : stop_condition =
  { source; value }

let target__filter ~path ~values () : target__filter =
  { path; values }

let target__resource_tag ~key ~value () : target__resource_tag =
  { key; value }

let target ?parameters ?resource_arns ?(filter = []) ~name
    ~resource_type ~selection_mode ~resource_tag () : target =
  {
    name;
    parameters;
    resource_arns;
    resource_type;
    selection_mode;
    filter;
    resource_tag;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fis_experiment_template ?id ?tags ?tags_all
    ?(log_configuration = []) ?timeouts ~description ~role_arn
    ~action ~stop_condition ~target () : aws_fis_experiment_template
    =
  {
    description;
    id;
    role_arn;
    tags;
    tags_all;
    action;
    log_configuration;
    stop_condition;
    target;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(log_configuration = []) ?timeouts
    ~description ~role_arn ~action ~stop_condition ~target __id =
  let __type = "aws_fis_experiment_template" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fis_experiment_template
        (aws_fis_experiment_template ?id ?tags ?tags_all
           ~log_configuration ?timeouts ~description ~role_arn
           ~action ~stop_condition ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(log_configuration = [])
    ?timeouts ~description ~role_arn ~action ~stop_condition ~target
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~log_configuration ?timeouts
      ~description ~role_arn ~action ~stop_condition ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
