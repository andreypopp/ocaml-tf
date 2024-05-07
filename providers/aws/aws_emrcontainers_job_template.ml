(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type job_template_data__configuration_overrides__application_configuration__configurations = {
  classification : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       job_template_data__configuration_overrides__application_configuration__configurations) ->
  ()

let yojson_of_job_template_data__configuration_overrides__application_configuration__configurations
    =
  (function
   | { classification = v_classification; properties = v_properties }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_properties with
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
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides__application_configuration__configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__configuration_overrides__application_configuration__configurations

[@@@deriving.end]

type job_template_data__configuration_overrides__application_configuration = {
  classification : string prop;
  properties : (string * string prop) list option; [@option]
  configurations :
    job_template_data__configuration_overrides__application_configuration__configurations
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       job_template_data__configuration_overrides__application_configuration) ->
  ()

let yojson_of_job_template_data__configuration_overrides__application_configuration
    =
  (function
   | {
       classification = v_classification;
       properties = v_properties;
       configurations = v_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides__application_configuration__configurations
             v_configurations
         in
         ("configurations", arg) :: bnds
       in
       let bnds =
         match v_properties with
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
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_classification
         in
         ("classification", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides__application_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__configuration_overrides__application_configuration

[@@@deriving.end]

type job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration = {
  log_group_name : string prop;
  log_stream_name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration) ->
  ()

let yojson_of_job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    =
  (function
   | {
       log_group_name = v_log_group_name;
       log_stream_name_prefix = v_log_stream_name_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration

[@@@deriving.end]

type job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration = {
  log_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration) ->
  ()

let yojson_of_job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    =
  (function
   | { log_uri = v_log_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_uri in
         ("log_uri", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration

[@@@deriving.end]

type job_template_data__configuration_overrides__monitoring_configuration = {
  persistent_app_ui : string prop option; [@option]
  cloud_watch_monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    list;
  s3_monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       job_template_data__configuration_overrides__monitoring_configuration) ->
  ()

let yojson_of_job_template_data__configuration_overrides__monitoring_configuration
    =
  (function
   | {
       persistent_app_ui = v_persistent_app_ui;
       cloud_watch_monitoring_configuration =
         v_cloud_watch_monitoring_configuration;
       s3_monitoring_configuration = v_s3_monitoring_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
             v_s3_monitoring_configuration
         in
         ("s3_monitoring_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
             v_cloud_watch_monitoring_configuration
         in
         ("cloud_watch_monitoring_configuration", arg) :: bnds
       in
       let bnds =
         match v_persistent_app_ui with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "persistent_app_ui", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides__monitoring_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__configuration_overrides__monitoring_configuration

[@@@deriving.end]

type job_template_data__configuration_overrides = {
  application_configuration :
    job_template_data__configuration_overrides__application_configuration
    list;
  monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_template_data__configuration_overrides) -> ()

let yojson_of_job_template_data__configuration_overrides =
  (function
   | {
       application_configuration = v_application_configuration;
       monitoring_configuration = v_monitoring_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides__monitoring_configuration
             v_monitoring_configuration
         in
         ("monitoring_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides__application_configuration
             v_application_configuration
         in
         ("application_configuration", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__configuration_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_template_data__configuration_overrides

[@@@deriving.end]

type job_template_data__job_driver__spark_sql_job_driver = {
  entry_point : string prop option; [@option]
  spark_sql_parameters : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : job_template_data__job_driver__spark_sql_job_driver) -> ()

let yojson_of_job_template_data__job_driver__spark_sql_job_driver =
  (function
   | {
       entry_point = v_entry_point;
       spark_sql_parameters = v_spark_sql_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_spark_sql_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spark_sql_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entry_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entry_point", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : job_template_data__job_driver__spark_sql_job_driver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_template_data__job_driver__spark_sql_job_driver

[@@@deriving.end]

type job_template_data__job_driver__spark_submit_job_driver = {
  entry_point : string prop;
  entry_point_arguments : string prop list option; [@option]
  spark_submit_parameters : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : job_template_data__job_driver__spark_submit_job_driver) ->
  ()

let yojson_of_job_template_data__job_driver__spark_submit_job_driver
    =
  (function
   | {
       entry_point = v_entry_point;
       entry_point_arguments = v_entry_point_arguments;
       spark_submit_parameters = v_spark_submit_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_spark_submit_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spark_submit_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entry_point_arguments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "entry_point_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entry_point in
         ("entry_point", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__job_driver__spark_submit_job_driver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_job_template_data__job_driver__spark_submit_job_driver

[@@@deriving.end]

type job_template_data__job_driver = {
  spark_sql_job_driver :
    job_template_data__job_driver__spark_sql_job_driver list;
  spark_submit_job_driver :
    job_template_data__job_driver__spark_submit_job_driver list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_template_data__job_driver) -> ()

let yojson_of_job_template_data__job_driver =
  (function
   | {
       spark_sql_job_driver = v_spark_sql_job_driver;
       spark_submit_job_driver = v_spark_submit_job_driver;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__job_driver__spark_submit_job_driver
             v_spark_submit_job_driver
         in
         ("spark_submit_job_driver", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__job_driver__spark_sql_job_driver
             v_spark_sql_job_driver
         in
         ("spark_sql_job_driver", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data__job_driver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_template_data__job_driver

[@@@deriving.end]

type job_template_data = {
  execution_role_arn : string prop;
  job_tags : (string * string prop) list option; [@option]
  release_label : string prop;
  configuration_overrides :
    job_template_data__configuration_overrides list;
  job_driver : job_template_data__job_driver list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_template_data) -> ()

let yojson_of_job_template_data =
  (function
   | {
       execution_role_arn = v_execution_role_arn;
       job_tags = v_job_tags;
       release_label = v_release_label;
       configuration_overrides = v_configuration_overrides;
       job_driver = v_job_driver;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_job_template_data__job_driver
             v_job_driver
         in
         ("job_driver", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_job_template_data__configuration_overrides
             v_configuration_overrides
         in
         ("configuration_overrides", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_release_label in
         ("release_label", arg) :: bnds
       in
       let bnds =
         match v_job_tags with
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
             let bnd = "job_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : job_template_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_template_data

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_emrcontainers_job_template = {
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  job_template_data : job_template_data list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emrcontainers_job_template) -> ()

let yojson_of_aws_emrcontainers_job_template =
  (function
   | {
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       job_template_data = v_job_template_data;
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
           yojson_of_list yojson_of_job_template_data
             v_job_template_data
         in
         ("job_template_data", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
       `Assoc bnds
    : aws_emrcontainers_job_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emrcontainers_job_template

[@@@deriving.end]

let job_template_data__configuration_overrides__application_configuration__configurations
    ?classification ?properties () :
    job_template_data__configuration_overrides__application_configuration__configurations
    =
  { classification; properties }

let job_template_data__configuration_overrides__application_configuration
    ?properties ?(configurations = []) ~classification () :
    job_template_data__configuration_overrides__application_configuration
    =
  { classification; properties; configurations }

let job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    ?log_stream_name_prefix ~log_group_name () :
    job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    =
  { log_group_name; log_stream_name_prefix }

let job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    ~log_uri () :
    job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    =
  { log_uri }

let job_template_data__configuration_overrides__monitoring_configuration
    ?persistent_app_ui ?(cloud_watch_monitoring_configuration = [])
    ?(s3_monitoring_configuration = []) () :
    job_template_data__configuration_overrides__monitoring_configuration
    =
  {
    persistent_app_ui;
    cloud_watch_monitoring_configuration;
    s3_monitoring_configuration;
  }

let job_template_data__configuration_overrides
    ?(application_configuration = [])
    ?(monitoring_configuration = []) () :
    job_template_data__configuration_overrides =
  { application_configuration; monitoring_configuration }

let job_template_data__job_driver__spark_sql_job_driver ?entry_point
    ?spark_sql_parameters () :
    job_template_data__job_driver__spark_sql_job_driver =
  { entry_point; spark_sql_parameters }

let job_template_data__job_driver__spark_submit_job_driver
    ?entry_point_arguments ?spark_submit_parameters ~entry_point () :
    job_template_data__job_driver__spark_submit_job_driver =
  { entry_point; entry_point_arguments; spark_submit_parameters }

let job_template_data__job_driver ?(spark_sql_job_driver = [])
    ?(spark_submit_job_driver = []) () :
    job_template_data__job_driver =
  { spark_sql_job_driver; spark_submit_job_driver }

let job_template_data ?job_tags ?(configuration_overrides = [])
    ~execution_role_arn ~release_label ~job_driver () :
    job_template_data =
  {
    execution_role_arn;
    job_tags;
    release_label;
    configuration_overrides;
    job_driver;
  }

let timeouts ?delete () : timeouts = { delete }

let aws_emrcontainers_job_template ?id ?kms_key_arn ?tags ?tags_all
    ?timeouts ~name ~job_template_data () :
    aws_emrcontainers_job_template =
  {
    id;
    kms_key_arn;
    name;
    tags;
    tags_all;
    job_template_data;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_arn ?tags ?tags_all ?timeouts ~name
    ~job_template_data __id =
  let __type = "aws_emrcontainers_job_template" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emrcontainers_job_template
        (aws_emrcontainers_job_template ?id ?kms_key_arn ?tags
           ?tags_all ?timeouts ~name ~job_template_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?tags ?tags_all ?timeouts
    ~name ~job_template_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?tags ?tags_all ?timeouts ~name
      ~job_template_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
