(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type exclude_filter = {
  metric_names : string prop list option; [@option]
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude_filter) -> ()

let yojson_of_exclude_filter =
  (function
   | { metric_names = v_metric_names; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         match v_metric_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metric_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude_filter

[@@@deriving.end]

type include_filter = {
  metric_names : string prop list option; [@option]
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include_filter) -> ()

let yojson_of_include_filter =
  (function
   | { metric_names = v_metric_names; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         match v_metric_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metric_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include_filter

[@@@deriving.end]

type statistics_configuration__include_metric = {
  metric_name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statistics_configuration__include_metric) -> ()

let yojson_of_statistics_configuration__include_metric =
  (function
   | { metric_name = v_metric_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : statistics_configuration__include_metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statistics_configuration__include_metric

[@@@deriving.end]

type statistics_configuration = {
  additional_statistics : string prop list;
  include_metric : statistics_configuration__include_metric list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statistics_configuration) -> ()

let yojson_of_statistics_configuration =
  (function
   | {
       additional_statistics = v_additional_statistics;
       include_metric = v_include_metric;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_statistics_configuration__include_metric
             v_include_metric
         in
         ("include_metric", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_additional_statistics
         in
         ("additional_statistics", arg) :: bnds
       in
       `Assoc bnds
    : statistics_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statistics_configuration

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

type aws_cloudwatch_metric_stream = {
  firehose_arn : string prop;
  id : string prop option; [@option]
  include_linked_accounts_metrics : bool prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  output_format : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  exclude_filter : exclude_filter list;
  include_filter : include_filter list;
  statistics_configuration : statistics_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_metric_stream) -> ()

let yojson_of_aws_cloudwatch_metric_stream =
  (function
   | {
       firehose_arn = v_firehose_arn;
       id = v_id;
       include_linked_accounts_metrics =
         v_include_linked_accounts_metrics;
       name = v_name;
       name_prefix = v_name_prefix;
       output_format = v_output_format;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       exclude_filter = v_exclude_filter;
       include_filter = v_include_filter;
       statistics_configuration = v_statistics_configuration;
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
           yojson_of_list yojson_of_statistics_configuration
             v_statistics_configuration
         in
         ("statistics_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_include_filter v_include_filter
         in
         ("include_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_exclude_filter v_exclude_filter
         in
         ("exclude_filter", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_output_format in
         ("output_format", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_linked_accounts_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_linked_accounts_metrics", arg in
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
         let arg = yojson_of_prop yojson_of_string v_firehose_arn in
         ("firehose_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_metric_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_metric_stream

[@@@deriving.end]

let exclude_filter ?metric_names ~namespace () : exclude_filter =
  { metric_names; namespace }

let include_filter ?metric_names ~namespace () : include_filter =
  { metric_names; namespace }

let statistics_configuration__include_metric ~metric_name ~namespace
    () : statistics_configuration__include_metric =
  { metric_name; namespace }

let statistics_configuration ~additional_statistics ~include_metric
    () : statistics_configuration =
  { additional_statistics; include_metric }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudwatch_metric_stream ?id ?include_linked_accounts_metrics
    ?name ?name_prefix ?tags ?tags_all ?timeouts ~firehose_arn
    ~output_format ~role_arn ~exclude_filter ~include_filter
    ~statistics_configuration () : aws_cloudwatch_metric_stream =
  {
    firehose_arn;
    id;
    include_linked_accounts_metrics;
    name;
    name_prefix;
    output_format;
    role_arn;
    tags;
    tags_all;
    exclude_filter;
    include_filter;
    statistics_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  creation_date : string prop;
  firehose_arn : string prop;
  id : string prop;
  include_linked_accounts_metrics : bool prop;
  last_update_date : string prop;
  name : string prop;
  name_prefix : string prop;
  output_format : string prop;
  role_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?include_linked_accounts_metrics ?name ?name_prefix
    ?tags ?tags_all ?timeouts ~firehose_arn ~output_format ~role_arn
    ~exclude_filter ~include_filter ~statistics_configuration __id =
  let __type = "aws_cloudwatch_metric_stream" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       firehose_arn = Prop.computed __type __id "firehose_arn";
       id = Prop.computed __type __id "id";
       include_linked_accounts_metrics =
         Prop.computed __type __id "include_linked_accounts_metrics";
       last_update_date =
         Prop.computed __type __id "last_update_date";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       output_format = Prop.computed __type __id "output_format";
       role_arn = Prop.computed __type __id "role_arn";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_metric_stream
        (aws_cloudwatch_metric_stream ?id
           ?include_linked_accounts_metrics ?name ?name_prefix ?tags
           ?tags_all ?timeouts ~firehose_arn ~output_format ~role_arn
           ~exclude_filter ~include_filter ~statistics_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_linked_accounts_metrics ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~firehose_arn
    ~output_format ~role_arn ~exclude_filter ~include_filter
    ~statistics_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_linked_accounts_metrics ?name ?name_prefix
      ?tags ?tags_all ?timeouts ~firehose_arn ~output_format
      ~role_arn ~exclude_filter ~include_filter
      ~statistics_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
