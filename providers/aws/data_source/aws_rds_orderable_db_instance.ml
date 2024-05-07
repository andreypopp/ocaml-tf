(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_orderable_db_instance = {
  availability_zone_group : string prop option; [@option]
  engine : string prop;
  engine_latest_version : bool prop option; [@option]
  engine_version : string prop option; [@option]
  id : string prop option; [@option]
  instance_class : string prop option; [@option]
  license_model : string prop option; [@option]
  preferred_engine_versions : string prop list option; [@option]
  preferred_instance_classes : string prop list option; [@option]
  read_replica_capable : bool prop option; [@option]
  storage_type : string prop option; [@option]
  supported_engine_modes : string prop list option; [@option]
  supported_network_types : string prop list option; [@option]
  supports_clusters : bool prop option; [@option]
  supports_enhanced_monitoring : bool prop option; [@option]
  supports_global_databases : bool prop option; [@option]
  supports_iam_database_authentication : bool prop option; [@option]
  supports_iops : bool prop option; [@option]
  supports_kerberos_authentication : bool prop option; [@option]
  supports_multi_az : bool prop option; [@option]
  supports_performance_insights : bool prop option; [@option]
  supports_storage_autoscaling : bool prop option; [@option]
  supports_storage_encryption : bool prop option; [@option]
  vpc : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_orderable_db_instance) -> ()

let yojson_of_aws_rds_orderable_db_instance =
  (function
   | {
       availability_zone_group = v_availability_zone_group;
       engine = v_engine;
       engine_latest_version = v_engine_latest_version;
       engine_version = v_engine_version;
       id = v_id;
       instance_class = v_instance_class;
       license_model = v_license_model;
       preferred_engine_versions = v_preferred_engine_versions;
       preferred_instance_classes = v_preferred_instance_classes;
       read_replica_capable = v_read_replica_capable;
       storage_type = v_storage_type;
       supported_engine_modes = v_supported_engine_modes;
       supported_network_types = v_supported_network_types;
       supports_clusters = v_supports_clusters;
       supports_enhanced_monitoring = v_supports_enhanced_monitoring;
       supports_global_databases = v_supports_global_databases;
       supports_iam_database_authentication =
         v_supports_iam_database_authentication;
       supports_iops = v_supports_iops;
       supports_kerberos_authentication =
         v_supports_kerberos_authentication;
       supports_multi_az = v_supports_multi_az;
       supports_performance_insights =
         v_supports_performance_insights;
       supports_storage_autoscaling = v_supports_storage_autoscaling;
       supports_storage_encryption = v_supports_storage_encryption;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vpc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_storage_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_storage_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_storage_autoscaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_storage_autoscaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_performance_insights with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_performance_insights", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_multi_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_multi_az", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_kerberos_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_kerberos_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_iam_database_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_iam_database_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_global_databases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_global_databases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_enhanced_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_enhanced_monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supports_clusters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "supports_clusters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supported_network_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_network_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supported_engine_modes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_engine_modes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_replica_capable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_replica_capable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_instance_classes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_instance_classes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_engine_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_engine_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_class", arg in
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
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_latest_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "engine_latest_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         match v_availability_zone_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_orderable_db_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_orderable_db_instance

[@@@deriving.end]

let aws_rds_orderable_db_instance ?availability_zone_group
    ?engine_latest_version ?engine_version ?id ?instance_class
    ?license_model ?preferred_engine_versions
    ?preferred_instance_classes ?read_replica_capable ?storage_type
    ?supported_engine_modes ?supported_network_types
    ?supports_clusters ?supports_enhanced_monitoring
    ?supports_global_databases ?supports_iam_database_authentication
    ?supports_iops ?supports_kerberos_authentication
    ?supports_multi_az ?supports_performance_insights
    ?supports_storage_autoscaling ?supports_storage_encryption ?vpc
    ~engine () : aws_rds_orderable_db_instance =
  {
    availability_zone_group;
    engine;
    engine_latest_version;
    engine_version;
    id;
    instance_class;
    license_model;
    preferred_engine_versions;
    preferred_instance_classes;
    read_replica_capable;
    storage_type;
    supported_engine_modes;
    supported_network_types;
    supports_clusters;
    supports_enhanced_monitoring;
    supports_global_databases;
    supports_iam_database_authentication;
    supports_iops;
    supports_kerberos_authentication;
    supports_multi_az;
    supports_performance_insights;
    supports_storage_autoscaling;
    supports_storage_encryption;
    vpc;
  }

type t = {
  tf_name : string;
  availability_zone_group : string prop;
  availability_zones : string list prop;
  engine : string prop;
  engine_latest_version : bool prop;
  engine_version : string prop;
  id : string prop;
  instance_class : string prop;
  license_model : string prop;
  max_iops_per_db_instance : float prop;
  max_iops_per_gib : float prop;
  max_storage_size : float prop;
  min_iops_per_db_instance : float prop;
  min_iops_per_gib : float prop;
  min_storage_size : float prop;
  multi_az_capable : bool prop;
  outpost_capable : bool prop;
  preferred_engine_versions : string list prop;
  preferred_instance_classes : string list prop;
  read_replica_capable : bool prop;
  storage_type : string prop;
  supported_engine_modes : string list prop;
  supported_network_types : string list prop;
  supports_clusters : bool prop;
  supports_enhanced_monitoring : bool prop;
  supports_global_databases : bool prop;
  supports_iam_database_authentication : bool prop;
  supports_iops : bool prop;
  supports_kerberos_authentication : bool prop;
  supports_multi_az : bool prop;
  supports_performance_insights : bool prop;
  supports_storage_autoscaling : bool prop;
  supports_storage_encryption : bool prop;
  vpc : bool prop;
}

let make ?availability_zone_group ?engine_latest_version
    ?engine_version ?id ?instance_class ?license_model
    ?preferred_engine_versions ?preferred_instance_classes
    ?read_replica_capable ?storage_type ?supported_engine_modes
    ?supported_network_types ?supports_clusters
    ?supports_enhanced_monitoring ?supports_global_databases
    ?supports_iam_database_authentication ?supports_iops
    ?supports_kerberos_authentication ?supports_multi_az
    ?supports_performance_insights ?supports_storage_autoscaling
    ?supports_storage_encryption ?vpc ~engine __id =
  let __type = "aws_rds_orderable_db_instance" in
  let __attrs =
    ({
       tf_name = __id;
       availability_zone_group =
         Prop.computed __type __id "availability_zone_group";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       engine = Prop.computed __type __id "engine";
       engine_latest_version =
         Prop.computed __type __id "engine_latest_version";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       instance_class = Prop.computed __type __id "instance_class";
       license_model = Prop.computed __type __id "license_model";
       max_iops_per_db_instance =
         Prop.computed __type __id "max_iops_per_db_instance";
       max_iops_per_gib =
         Prop.computed __type __id "max_iops_per_gib";
       max_storage_size =
         Prop.computed __type __id "max_storage_size";
       min_iops_per_db_instance =
         Prop.computed __type __id "min_iops_per_db_instance";
       min_iops_per_gib =
         Prop.computed __type __id "min_iops_per_gib";
       min_storage_size =
         Prop.computed __type __id "min_storage_size";
       multi_az_capable =
         Prop.computed __type __id "multi_az_capable";
       outpost_capable = Prop.computed __type __id "outpost_capable";
       preferred_engine_versions =
         Prop.computed __type __id "preferred_engine_versions";
       preferred_instance_classes =
         Prop.computed __type __id "preferred_instance_classes";
       read_replica_capable =
         Prop.computed __type __id "read_replica_capable";
       storage_type = Prop.computed __type __id "storage_type";
       supported_engine_modes =
         Prop.computed __type __id "supported_engine_modes";
       supported_network_types =
         Prop.computed __type __id "supported_network_types";
       supports_clusters =
         Prop.computed __type __id "supports_clusters";
       supports_enhanced_monitoring =
         Prop.computed __type __id "supports_enhanced_monitoring";
       supports_global_databases =
         Prop.computed __type __id "supports_global_databases";
       supports_iam_database_authentication =
         Prop.computed __type __id
           "supports_iam_database_authentication";
       supports_iops = Prop.computed __type __id "supports_iops";
       supports_kerberos_authentication =
         Prop.computed __type __id "supports_kerberos_authentication";
       supports_multi_az =
         Prop.computed __type __id "supports_multi_az";
       supports_performance_insights =
         Prop.computed __type __id "supports_performance_insights";
       supports_storage_autoscaling =
         Prop.computed __type __id "supports_storage_autoscaling";
       supports_storage_encryption =
         Prop.computed __type __id "supports_storage_encryption";
       vpc = Prop.computed __type __id "vpc";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_orderable_db_instance
        (aws_rds_orderable_db_instance ?availability_zone_group
           ?engine_latest_version ?engine_version ?id ?instance_class
           ?license_model ?preferred_engine_versions
           ?preferred_instance_classes ?read_replica_capable
           ?storage_type ?supported_engine_modes
           ?supported_network_types ?supports_clusters
           ?supports_enhanced_monitoring ?supports_global_databases
           ?supports_iam_database_authentication ?supports_iops
           ?supports_kerberos_authentication ?supports_multi_az
           ?supports_performance_insights
           ?supports_storage_autoscaling ?supports_storage_encryption
           ?vpc ~engine ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone_group
    ?engine_latest_version ?engine_version ?id ?instance_class
    ?license_model ?preferred_engine_versions
    ?preferred_instance_classes ?read_replica_capable ?storage_type
    ?supported_engine_modes ?supported_network_types
    ?supports_clusters ?supports_enhanced_monitoring
    ?supports_global_databases ?supports_iam_database_authentication
    ?supports_iops ?supports_kerberos_authentication
    ?supports_multi_az ?supports_performance_insights
    ?supports_storage_autoscaling ?supports_storage_encryption ?vpc
    ~engine __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_group ?engine_latest_version
      ?engine_version ?id ?instance_class ?license_model
      ?preferred_engine_versions ?preferred_instance_classes
      ?read_replica_capable ?storage_type ?supported_engine_modes
      ?supported_network_types ?supports_clusters
      ?supports_enhanced_monitoring ?supports_global_databases
      ?supports_iam_database_authentication ?supports_iops
      ?supports_kerberos_authentication ?supports_multi_az
      ?supports_performance_insights ?supports_storage_autoscaling
      ?supports_storage_encryption ?vpc ~engine __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
