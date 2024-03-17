(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_mysql_layer__cloudwatch_configuration__log_streams = {
  batch_count : float prop option; [@option]  (** batch_count *)
  batch_size : float prop option; [@option]  (** batch_size *)
  buffer_duration : float prop option; [@option]
      (** buffer_duration *)
  datetime_format : string prop option; [@option]
      (** datetime_format *)
  encoding : string prop option; [@option]  (** encoding *)
  file : string prop;  (** file *)
  file_fingerprint_lines : string prop option; [@option]
      (** file_fingerprint_lines *)
  initial_position : string prop option; [@option]
      (** initial_position *)
  log_group_name : string prop;  (** log_group_name *)
  multiline_start_pattern : string prop option; [@option]
      (** multiline_start_pattern *)
  time_zone : string prop option; [@option]  (** time_zone *)
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__cloudwatch_configuration__log_streams *)

type aws_opsworks_mysql_layer__cloudwatch_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_streams :
    aws_opsworks_mysql_layer__cloudwatch_configuration__log_streams
    list;
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__cloudwatch_configuration *)

type aws_opsworks_mysql_layer__ebs_volume = {
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  mount_point : string prop;  (** mount_point *)
  number_of_disks : float prop;  (** number_of_disks *)
  raid_level : string prop option; [@option]  (** raid_level *)
  size : float prop;  (** size *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__ebs_volume *)

type aws_opsworks_mysql_layer__load_based_auto_scaling__downscaling = {
  alarms : string prop list option; [@option]  (** alarms *)
  cpu_threshold : float prop option; [@option]  (** cpu_threshold *)
  ignore_metrics_time : float prop option; [@option]
      (** ignore_metrics_time *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  load_threshold : float prop option; [@option]
      (** load_threshold *)
  memory_threshold : float prop option; [@option]
      (** memory_threshold *)
  thresholds_wait_time : float prop option; [@option]
      (** thresholds_wait_time *)
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__load_based_auto_scaling__downscaling *)

type aws_opsworks_mysql_layer__load_based_auto_scaling__upscaling = {
  alarms : string prop list option; [@option]  (** alarms *)
  cpu_threshold : float prop option; [@option]  (** cpu_threshold *)
  ignore_metrics_time : float prop option; [@option]
      (** ignore_metrics_time *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  load_threshold : float prop option; [@option]
      (** load_threshold *)
  memory_threshold : float prop option; [@option]
      (** memory_threshold *)
  thresholds_wait_time : float prop option; [@option]
      (** thresholds_wait_time *)
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__load_based_auto_scaling__upscaling *)

type aws_opsworks_mysql_layer__load_based_auto_scaling = {
  enable : bool prop option; [@option]  (** enable *)
  downscaling :
    aws_opsworks_mysql_layer__load_based_auto_scaling__downscaling
    list;
  upscaling :
    aws_opsworks_mysql_layer__load_based_auto_scaling__upscaling list;
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer__load_based_auto_scaling *)

type aws_opsworks_mysql_layer = {
  auto_assign_elastic_ips : bool prop option; [@option]
      (** auto_assign_elastic_ips *)
  auto_assign_public_ips : bool prop option; [@option]
      (** auto_assign_public_ips *)
  auto_healing : bool prop option; [@option]  (** auto_healing *)
  custom_configure_recipes : string prop list option; [@option]
      (** custom_configure_recipes *)
  custom_deploy_recipes : string prop list option; [@option]
      (** custom_deploy_recipes *)
  custom_instance_profile_arn : string prop option; [@option]
      (** custom_instance_profile_arn *)
  custom_json : string prop option; [@option]  (** custom_json *)
  custom_security_group_ids : string prop list option; [@option]
      (** custom_security_group_ids *)
  custom_setup_recipes : string prop list option; [@option]
      (** custom_setup_recipes *)
  custom_shutdown_recipes : string prop list option; [@option]
      (** custom_shutdown_recipes *)
  custom_undeploy_recipes : string prop list option; [@option]
      (** custom_undeploy_recipes *)
  drain_elb_on_shutdown : bool prop option; [@option]
      (** drain_elb_on_shutdown *)
  elastic_load_balancer : string prop option; [@option]
      (** elastic_load_balancer *)
  id : string prop option; [@option]  (** id *)
  install_updates_on_boot : bool prop option; [@option]
      (** install_updates_on_boot *)
  instance_shutdown_timeout : float prop option; [@option]
      (** instance_shutdown_timeout *)
  name : string prop option; [@option]  (** name *)
  root_password : string prop option; [@option]  (** root_password *)
  root_password_on_all_instances : bool prop option; [@option]
      (** root_password_on_all_instances *)
  stack_id : string prop;  (** stack_id *)
  system_packages : string prop list option; [@option]
      (** system_packages *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  use_ebs_optimized_instances : bool prop option; [@option]
      (** use_ebs_optimized_instances *)
  cloudwatch_configuration :
    aws_opsworks_mysql_layer__cloudwatch_configuration list;
  ebs_volume : aws_opsworks_mysql_layer__ebs_volume list;
  load_based_auto_scaling :
    aws_opsworks_mysql_layer__load_based_auto_scaling list;
}
[@@deriving yojson_of]
(** aws_opsworks_mysql_layer *)

let aws_opsworks_mysql_layer ?auto_assign_elastic_ips
    ?auto_assign_public_ips ?auto_healing ?custom_configure_recipes
    ?custom_deploy_recipes ?custom_instance_profile_arn ?custom_json
    ?custom_security_group_ids ?custom_setup_recipes
    ?custom_shutdown_recipes ?custom_undeploy_recipes
    ?drain_elb_on_shutdown ?elastic_load_balancer ?id
    ?install_updates_on_boot ?instance_shutdown_timeout ?name
    ?root_password ?root_password_on_all_instances ?system_packages
    ?tags ?tags_all ?use_ebs_optimized_instances ~stack_id
    ~cloudwatch_configuration ~ebs_volume ~load_based_auto_scaling
    __resource_id =
  let __resource_type = "aws_opsworks_mysql_layer" in
  let __resource =
    {
      auto_assign_elastic_ips;
      auto_assign_public_ips;
      auto_healing;
      custom_configure_recipes;
      custom_deploy_recipes;
      custom_instance_profile_arn;
      custom_json;
      custom_security_group_ids;
      custom_setup_recipes;
      custom_shutdown_recipes;
      custom_undeploy_recipes;
      drain_elb_on_shutdown;
      elastic_load_balancer;
      id;
      install_updates_on_boot;
      instance_shutdown_timeout;
      name;
      root_password;
      root_password_on_all_instances;
      stack_id;
      system_packages;
      tags;
      tags_all;
      use_ebs_optimized_instances;
      cloudwatch_configuration;
      ebs_volume;
      load_based_auto_scaling;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_mysql_layer __resource);
  ()
