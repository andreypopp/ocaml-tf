(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type job_template_data__configuration_overrides__application_configuration__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides__application_configuration__configurations *)

type job_template_data__configuration_overrides__application_configuration = {
  classification : string prop;  (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  configurations :
    job_template_data__configuration_overrides__application_configuration__configurations
    list;
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides__application_configuration *)

type job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration = {
  log_group_name : string prop;  (** log_group_name *)
  log_stream_name_prefix : string prop option; [@option]
      (** log_stream_name_prefix *)
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration *)

type job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration = {
  log_uri : string prop;  (** log_uri *)
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration *)

type job_template_data__configuration_overrides__monitoring_configuration = {
  persistent_app_ui : string prop option; [@option]
      (** persistent_app_ui *)
  cloud_watch_monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    list;
  s3_monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    list;
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides__monitoring_configuration *)

type job_template_data__configuration_overrides = {
  application_configuration :
    job_template_data__configuration_overrides__application_configuration
    list;
  monitoring_configuration :
    job_template_data__configuration_overrides__monitoring_configuration
    list;
}
[@@deriving yojson_of]
(** job_template_data__configuration_overrides *)

type job_template_data__job_driver__spark_sql_job_driver = {
  entry_point : string prop option; [@option]  (** entry_point *)
  spark_sql_parameters : string prop option; [@option]
      (** spark_sql_parameters *)
}
[@@deriving yojson_of]
(** job_template_data__job_driver__spark_sql_job_driver *)

type job_template_data__job_driver__spark_submit_job_driver = {
  entry_point : string prop;  (** entry_point *)
  entry_point_arguments : string prop list option; [@option]
      (** entry_point_arguments *)
  spark_submit_parameters : string prop option; [@option]
      (** spark_submit_parameters *)
}
[@@deriving yojson_of]
(** job_template_data__job_driver__spark_submit_job_driver *)

type job_template_data__job_driver = {
  spark_sql_job_driver :
    job_template_data__job_driver__spark_sql_job_driver list;
  spark_submit_job_driver :
    job_template_data__job_driver__spark_submit_job_driver list;
}
[@@deriving yojson_of]
(** job_template_data__job_driver *)

type job_template_data = {
  execution_role_arn : string prop;  (** execution_role_arn *)
  job_tags : (string * string prop) list option; [@option]
      (** job_tags *)
  release_label : string prop;  (** release_label *)
  configuration_overrides :
    job_template_data__configuration_overrides list;
  job_driver : job_template_data__job_driver list;
}
[@@deriving yojson_of]
(** job_template_data *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_emrcontainers_job_template = {
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  job_template_data : job_template_data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template *)

let job_template_data__configuration_overrides__application_configuration__configurations
    ?classification ?properties () :
    job_template_data__configuration_overrides__application_configuration__configurations
    =
  { classification; properties }

let job_template_data__configuration_overrides__application_configuration
    ?properties ~classification ~configurations () :
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
    ?persistent_app_ui ~cloud_watch_monitoring_configuration
    ~s3_monitoring_configuration () :
    job_template_data__configuration_overrides__monitoring_configuration
    =
  {
    persistent_app_ui;
    cloud_watch_monitoring_configuration;
    s3_monitoring_configuration;
  }

let job_template_data__configuration_overrides
    ~application_configuration ~monitoring_configuration () :
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

let job_template_data__job_driver ~spark_sql_job_driver
    ~spark_submit_job_driver () : job_template_data__job_driver =
  { spark_sql_job_driver; spark_submit_job_driver }

let job_template_data ?job_tags ~execution_role_arn ~release_label
    ~configuration_overrides ~job_driver () : job_template_data =
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
