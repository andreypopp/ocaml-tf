(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_cluster__auto_scaling_configuration = {
  auto_scaling_metric : string;  (** auto_scaling_metric *)
  max_node_count : float;  (** max_node_count *)
  metric_target : float;  (** metric_target *)
  min_node_count : float;  (** min_node_count *)
  scale_in_cooldown_seconds : float;
      (** scale_in_cooldown_seconds *)
  scale_out_cooldown_seconds : float;
      (** scale_out_cooldown_seconds *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__auto_scaling_configuration *)

type aws_finspace_kx_cluster__cache_storage_configurations = {
  size : float;  (** size *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__cache_storage_configurations *)

type aws_finspace_kx_cluster__capacity_configuration = {
  node_count : float;  (** node_count *)
  node_type : string;  (** node_type *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__capacity_configuration *)

type aws_finspace_kx_cluster__code = {
  s3_bucket : string;  (** s3_bucket *)
  s3_key : string;  (** s3_key *)
  s3_object_version : string option; [@option]
      (** s3_object_version *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__code *)

type aws_finspace_kx_cluster__database__cache_configurations = {
  cache_type : string;  (** cache_type *)
  db_paths : string list option; [@option]  (** db_paths *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__database__cache_configurations *)

type aws_finspace_kx_cluster__database = {
  changeset_id : string option; [@option]  (** changeset_id *)
  database_name : string;  (** database_name *)
  dataview_name : string option; [@option]  (** dataview_name *)
  cache_configurations :
    aws_finspace_kx_cluster__database__cache_configurations list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__database *)

type aws_finspace_kx_cluster__savedown_storage_configuration = {
  size : float option; [@option]  (** size *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  volume_name : string option; [@option]  (** volume_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__savedown_storage_configuration *)

type aws_finspace_kx_cluster__scaling_group_configuration = {
  cpu : float option; [@option]  (** cpu *)
  memory_limit : float option; [@option]  (** memory_limit *)
  memory_reservation : float;  (** memory_reservation *)
  node_count : float;  (** node_count *)
  scaling_group_name : string;  (** scaling_group_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__scaling_group_configuration *)

type aws_finspace_kx_cluster__tickerplant_log_configuration = {
  tickerplant_log_volumes : string list;
      (** tickerplant_log_volumes *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__tickerplant_log_configuration *)

type aws_finspace_kx_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__timeouts *)

type aws_finspace_kx_cluster__vpc_configuration = {
  ip_address_type : string;  (** ip_address_type *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster__vpc_configuration *)

type aws_finspace_kx_cluster = {
  availability_zone_id : string option; [@option]
      (** availability_zone_id *)
  az_mode : string;  (** az_mode *)
  command_line_arguments : (string * string) list option; [@option]
      (** command_line_arguments *)
  description : string option; [@option]  (** description *)
  environment_id : string;  (** environment_id *)
  execution_role : string option; [@option]  (** execution_role *)
  initialization_script : string option; [@option]
      (** initialization_script *)
  name : string;  (** name *)
  release_label : string;  (** release_label *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  auto_scaling_configuration :
    aws_finspace_kx_cluster__auto_scaling_configuration list;
  cache_storage_configurations :
    aws_finspace_kx_cluster__cache_storage_configurations list;
  capacity_configuration :
    aws_finspace_kx_cluster__capacity_configuration list;
  code : aws_finspace_kx_cluster__code list;
  database : aws_finspace_kx_cluster__database list;
  savedown_storage_configuration :
    aws_finspace_kx_cluster__savedown_storage_configuration list;
  scaling_group_configuration :
    aws_finspace_kx_cluster__scaling_group_configuration list;
  tickerplant_log_configuration :
    aws_finspace_kx_cluster__tickerplant_log_configuration list;
  timeouts : aws_finspace_kx_cluster__timeouts option;
  vpc_configuration : aws_finspace_kx_cluster__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster *)

let aws_finspace_kx_cluster ?availability_zone_id
    ?command_line_arguments ?description ?execution_role
    ?initialization_script ?tags ?timeouts ~az_mode ~environment_id
    ~name ~release_label ~type_ ~auto_scaling_configuration
    ~cache_storage_configurations ~capacity_configuration ~code
    ~database ~savedown_storage_configuration
    ~scaling_group_configuration ~tickerplant_log_configuration
    ~vpc_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_cluster" in
  let __resource =
    {
      availability_zone_id;
      az_mode;
      command_line_arguments;
      description;
      environment_id;
      execution_role;
      initialization_script;
      name;
      release_label;
      tags;
      type_;
      auto_scaling_configuration;
      cache_storage_configurations;
      capacity_configuration;
      code;
      database;
      savedown_storage_configuration;
      scaling_group_configuration;
      tickerplant_log_configuration;
      timeouts;
      vpc_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_cluster __resource);
  ()
