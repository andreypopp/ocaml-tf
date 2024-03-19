(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auto_scaling_configuration = {
  auto_scaling_metric : string prop;  (** auto_scaling_metric *)
  max_node_count : float prop;  (** max_node_count *)
  metric_target : float prop;  (** metric_target *)
  min_node_count : float prop;  (** min_node_count *)
  scale_in_cooldown_seconds : float prop;
      (** scale_in_cooldown_seconds *)
  scale_out_cooldown_seconds : float prop;
      (** scale_out_cooldown_seconds *)
}
[@@deriving yojson_of]
(** auto_scaling_configuration *)

type cache_storage_configurations = {
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** cache_storage_configurations *)

type capacity_configuration = {
  node_count : float prop;  (** node_count *)
  node_type : string prop;  (** node_type *)
}
[@@deriving yojson_of]
(** capacity_configuration *)

type code = {
  s3_bucket : string prop;  (** s3_bucket *)
  s3_key : string prop;  (** s3_key *)
  s3_object_version : string prop option; [@option]
      (** s3_object_version *)
}
[@@deriving yojson_of]
(** code *)

type database__cache_configurations = {
  cache_type : string prop;  (** cache_type *)
  db_paths : string prop list option; [@option]  (** db_paths *)
}
[@@deriving yojson_of]
(** database__cache_configurations *)

type database = {
  changeset_id : string prop option; [@option]  (** changeset_id *)
  database_name : string prop;  (** database_name *)
  dataview_name : string prop option; [@option]  (** dataview_name *)
  cache_configurations : database__cache_configurations list;
}
[@@deriving yojson_of]
(** database *)

type savedown_storage_configuration = {
  size : float prop option; [@option]  (** size *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  volume_name : string prop option; [@option]  (** volume_name *)
}
[@@deriving yojson_of]
(** savedown_storage_configuration *)

type scaling_group_configuration = {
  cpu : float prop option; [@option]  (** cpu *)
  memory_limit : float prop option; [@option]  (** memory_limit *)
  memory_reservation : float prop;  (** memory_reservation *)
  node_count : float prop;  (** node_count *)
  scaling_group_name : string prop;  (** scaling_group_name *)
}
[@@deriving yojson_of]
(** scaling_group_configuration *)

type tickerplant_log_configuration = {
  tickerplant_log_volumes : string prop list;
      (** tickerplant_log_volumes *)
}
[@@deriving yojson_of]
(** tickerplant_log_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_configuration = {
  ip_address_type : string prop;  (** ip_address_type *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_configuration *)

type aws_finspace_kx_cluster = {
  availability_zone_id : string prop option; [@option]
      (** availability_zone_id *)
  az_mode : string prop;  (** az_mode *)
  command_line_arguments : (string * string prop) list option;
      [@option]
      (** command_line_arguments *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  execution_role : string prop option; [@option]
      (** execution_role *)
  id : string prop option; [@option]  (** id *)
  initialization_script : string prop option; [@option]
      (** initialization_script *)
  name : string prop;  (** name *)
  release_label : string prop;  (** release_label *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  auto_scaling_configuration : auto_scaling_configuration list;
  cache_storage_configurations : cache_storage_configurations list;
  capacity_configuration : capacity_configuration list;
  code : code list;
  database : database list;
  savedown_storage_configuration :
    savedown_storage_configuration list;
  scaling_group_configuration : scaling_group_configuration list;
  tickerplant_log_configuration : tickerplant_log_configuration list;
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_cluster *)

let auto_scaling_configuration ~auto_scaling_metric ~max_node_count
    ~metric_target ~min_node_count ~scale_in_cooldown_seconds
    ~scale_out_cooldown_seconds () : auto_scaling_configuration =
  {
    auto_scaling_metric;
    max_node_count;
    metric_target;
    min_node_count;
    scale_in_cooldown_seconds;
    scale_out_cooldown_seconds;
  }

let cache_storage_configurations ~size ~type_ () :
    cache_storage_configurations =
  { size; type_ }

let capacity_configuration ~node_count ~node_type () :
    capacity_configuration =
  { node_count; node_type }

let code ?s3_object_version ~s3_bucket ~s3_key () : code =
  { s3_bucket; s3_key; s3_object_version }

let database__cache_configurations ?db_paths ~cache_type () :
    database__cache_configurations =
  { cache_type; db_paths }

let database ?changeset_id ?dataview_name ~database_name
    ~cache_configurations () : database =
  {
    changeset_id;
    database_name;
    dataview_name;
    cache_configurations;
  }

let savedown_storage_configuration ?size ?type_ ?volume_name () :
    savedown_storage_configuration =
  { size; type_; volume_name }

let scaling_group_configuration ?cpu ?memory_limit
    ~memory_reservation ~node_count ~scaling_group_name () :
    scaling_group_configuration =
  {
    cpu;
    memory_limit;
    memory_reservation;
    node_count;
    scaling_group_name;
  }

let tickerplant_log_configuration ~tickerplant_log_volumes () :
    tickerplant_log_configuration =
  { tickerplant_log_volumes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ~ip_address_type ~security_group_ids
    ~subnet_ids ~vpc_id () : vpc_configuration =
  { ip_address_type; security_group_ids; subnet_ids; vpc_id }

let aws_finspace_kx_cluster ?availability_zone_id
    ?command_line_arguments ?description ?execution_role ?id
    ?initialization_script ?tags ?tags_all ?timeouts ~az_mode
    ~environment_id ~name ~release_label ~type_
    ~auto_scaling_configuration ~cache_storage_configurations
    ~capacity_configuration ~code ~database
    ~savedown_storage_configuration ~scaling_group_configuration
    ~tickerplant_log_configuration ~vpc_configuration () :
    aws_finspace_kx_cluster =
  {
    availability_zone_id;
    az_mode;
    command_line_arguments;
    description;
    environment_id;
    execution_role;
    id;
    initialization_script;
    name;
    release_label;
    tags;
    tags_all;
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

type t = {
  arn : string prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  command_line_arguments : (string * string) list prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  execution_role : string prop;
  id : string prop;
  initialization_script : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  release_label : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?availability_zone_id ?command_line_arguments
    ?description ?execution_role ?id ?initialization_script ?tags
    ?tags_all ?timeouts ~az_mode ~environment_id ~name ~release_label
    ~type_ ~auto_scaling_configuration ~cache_storage_configurations
    ~capacity_configuration ~code ~database
    ~savedown_storage_configuration ~scaling_group_configuration
    ~tickerplant_log_configuration ~vpc_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_cluster" in
  let __resource =
    aws_finspace_kx_cluster ?availability_zone_id
      ?command_line_arguments ?description ?execution_role ?id
      ?initialization_script ?tags ?tags_all ?timeouts ~az_mode
      ~environment_id ~name ~release_label ~type_
      ~auto_scaling_configuration ~cache_storage_configurations
      ~capacity_configuration ~code ~database
      ~savedown_storage_configuration ~scaling_group_configuration
      ~tickerplant_log_configuration ~vpc_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       az_mode =
         Prop.computed __resource_type __resource_id "az_mode";
       command_line_arguments =
         Prop.computed __resource_type __resource_id
           "command_line_arguments";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       execution_role =
         Prop.computed __resource_type __resource_id "execution_role";
       id = Prop.computed __resource_type __resource_id "id";
       initialization_script =
         Prop.computed __resource_type __resource_id
           "initialization_script";
       last_modified_timestamp =
         Prop.computed __resource_type __resource_id
           "last_modified_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       release_label =
         Prop.computed __resource_type __resource_id "release_label";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
