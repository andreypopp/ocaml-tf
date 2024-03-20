(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  enable : bool prop;  (** enable *)
  log_destination_type : string prop option; [@option]
      (** log_destination_type *)
  log_exports : string prop list option; [@option]
      (** log_exports *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** logging *)

type snapshot_copy = {
  destination_region : string prop;  (** destination_region *)
  grant_name : string prop option; [@option]  (** grant_name *)
  retention_period : float prop option; [@option]
      (** retention_period *)
}
[@@deriving yojson_of]
(** snapshot_copy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cluster_nodes = {
  node_role : string prop;  (** node_role *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address : string prop;  (** public_ip_address *)
}
[@@deriving yojson_of]

type aws_redshift_cluster = {
  allow_version_upgrade : bool prop option; [@option]
      (** allow_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  aqua_configuration_status : string prop option; [@option]
      (** aqua_configuration_status *)
  automated_snapshot_retention_period : float prop option; [@option]
      (** automated_snapshot_retention_period *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  availability_zone_relocation_enabled : bool prop option; [@option]
      (** availability_zone_relocation_enabled *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  cluster_parameter_group_name : string prop option; [@option]
      (** cluster_parameter_group_name *)
  cluster_public_key : string prop option; [@option]
      (** cluster_public_key *)
  cluster_revision_number : string prop option; [@option]
      (** cluster_revision_number *)
  cluster_subnet_group_name : string prop option; [@option]
      (** cluster_subnet_group_name *)
  cluster_type : string prop option; [@option]  (** cluster_type *)
  cluster_version : string prop option; [@option]
      (** cluster_version *)
  database_name : string prop option; [@option]  (** database_name *)
  default_iam_role_arn : string prop option; [@option]
      (** default_iam_role_arn *)
  elastic_ip : string prop option; [@option]  (** elastic_ip *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  endpoint : string prop option; [@option]  (** endpoint *)
  enhanced_vpc_routing : bool prop option; [@option]
      (** enhanced_vpc_routing *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  iam_roles : string prop list option; [@option]  (** iam_roles *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  maintenance_track_name : string prop option; [@option]
      (** maintenance_track_name *)
  manage_master_password : bool prop option; [@option]
      (** manage_master_password *)
  manual_snapshot_retention_period : float prop option; [@option]
      (** manual_snapshot_retention_period *)
  master_password : string prop option; [@option]
      (** master_password *)
  master_password_secret_kms_key_id : string prop option; [@option]
      (** master_password_secret_kms_key_id *)
  master_username : string prop option; [@option]
      (** master_username *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  node_type : string prop;  (** node_type *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
  owner_account : string prop option; [@option]  (** owner_account *)
  port : float prop option; [@option]  (** port *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_arn : string prop option; [@option]  (** snapshot_arn *)
  snapshot_cluster_identifier : string prop option; [@option]
      (** snapshot_cluster_identifier *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  logging : logging list;
  snapshot_copy : snapshot_copy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_cluster *)

let logging ?bucket_name ?log_destination_type ?log_exports
    ?s3_key_prefix ~enable () : logging =
  {
    bucket_name;
    enable;
    log_destination_type;
    log_exports;
    s3_key_prefix;
  }

let snapshot_copy ?grant_name ?retention_period ~destination_region
    () : snapshot_copy =
  { destination_region; grant_name; retention_period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshift_cluster ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    () : aws_redshift_cluster =
  {
    allow_version_upgrade;
    apply_immediately;
    aqua_configuration_status;
    automated_snapshot_retention_period;
    availability_zone;
    availability_zone_relocation_enabled;
    cluster_identifier;
    cluster_parameter_group_name;
    cluster_public_key;
    cluster_revision_number;
    cluster_subnet_group_name;
    cluster_type;
    cluster_version;
    database_name;
    default_iam_role_arn;
    elastic_ip;
    encrypted;
    endpoint;
    enhanced_vpc_routing;
    final_snapshot_identifier;
    iam_roles;
    id;
    kms_key_id;
    maintenance_track_name;
    manage_master_password;
    manual_snapshot_retention_period;
    master_password;
    master_password_secret_kms_key_id;
    master_username;
    multi_az;
    node_type;
    number_of_nodes;
    owner_account;
    port;
    preferred_maintenance_window;
    publicly_accessible;
    skip_final_snapshot;
    snapshot_arn;
    snapshot_cluster_identifier;
    snapshot_identifier;
    tags;
    tags_all;
    vpc_security_group_ids;
    logging;
    snapshot_copy;
    timeouts;
  }

type t = {
  allow_version_upgrade : bool prop;
  apply_immediately : bool prop;
  aqua_configuration_status : string prop;
  arn : string prop;
  automated_snapshot_retention_period : float prop;
  availability_zone : string prop;
  availability_zone_relocation_enabled : bool prop;
  cluster_identifier : string prop;
  cluster_namespace_arn : string prop;
  cluster_nodes : cluster_nodes list prop;
  cluster_parameter_group_name : string prop;
  cluster_public_key : string prop;
  cluster_revision_number : string prop;
  cluster_subnet_group_name : string prop;
  cluster_type : string prop;
  cluster_version : string prop;
  database_name : string prop;
  default_iam_role_arn : string prop;
  dns_name : string prop;
  elastic_ip : string prop;
  encrypted : bool prop;
  endpoint : string prop;
  enhanced_vpc_routing : bool prop;
  final_snapshot_identifier : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  maintenance_track_name : string prop;
  manage_master_password : bool prop;
  manual_snapshot_retention_period : float prop;
  master_password : string prop;
  master_password_secret_arn : string prop;
  master_password_secret_kms_key_id : string prop;
  master_username : string prop;
  multi_az : bool prop;
  node_type : string prop;
  number_of_nodes : float prop;
  owner_account : string prop;
  port : float prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  snapshot_arn : string prop;
  snapshot_cluster_identifier : string prop;
  snapshot_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    __id =
  let __type = "aws_redshift_cluster" in
  let __attrs =
    ({
       allow_version_upgrade =
         Prop.computed __type __id "allow_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       aqua_configuration_status =
         Prop.computed __type __id "aqua_configuration_status";
       arn = Prop.computed __type __id "arn";
       automated_snapshot_retention_period =
         Prop.computed __type __id
           "automated_snapshot_retention_period";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_relocation_enabled =
         Prop.computed __type __id
           "availability_zone_relocation_enabled";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_namespace_arn =
         Prop.computed __type __id "cluster_namespace_arn";
       cluster_nodes = Prop.computed __type __id "cluster_nodes";
       cluster_parameter_group_name =
         Prop.computed __type __id "cluster_parameter_group_name";
       cluster_public_key =
         Prop.computed __type __id "cluster_public_key";
       cluster_revision_number =
         Prop.computed __type __id "cluster_revision_number";
       cluster_subnet_group_name =
         Prop.computed __type __id "cluster_subnet_group_name";
       cluster_type = Prop.computed __type __id "cluster_type";
       cluster_version = Prop.computed __type __id "cluster_version";
       database_name = Prop.computed __type __id "database_name";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       dns_name = Prop.computed __type __id "dns_name";
       elastic_ip = Prop.computed __type __id "elastic_ip";
       encrypted = Prop.computed __type __id "encrypted";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       maintenance_track_name =
         Prop.computed __type __id "maintenance_track_name";
       manage_master_password =
         Prop.computed __type __id "manage_master_password";
       manual_snapshot_retention_period =
         Prop.computed __type __id "manual_snapshot_retention_period";
       master_password = Prop.computed __type __id "master_password";
       master_password_secret_arn =
         Prop.computed __type __id "master_password_secret_arn";
       master_password_secret_kms_key_id =
         Prop.computed __type __id
           "master_password_secret_kms_key_id";
       master_username = Prop.computed __type __id "master_username";
       multi_az = Prop.computed __type __id "multi_az";
       node_type = Prop.computed __type __id "node_type";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
       owner_account = Prop.computed __type __id "owner_account";
       port = Prop.computed __type __id "port";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       snapshot_arn = Prop.computed __type __id "snapshot_arn";
       snapshot_cluster_identifier =
         Prop.computed __type __id "snapshot_cluster_identifier";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_cluster
        (aws_redshift_cluster ?allow_version_upgrade
           ?apply_immediately ?aqua_configuration_status
           ?automated_snapshot_retention_period ?availability_zone
           ?availability_zone_relocation_enabled
           ?cluster_parameter_group_name ?cluster_public_key
           ?cluster_revision_number ?cluster_subnet_group_name
           ?cluster_type ?cluster_version ?database_name
           ?default_iam_role_arn ?elastic_ip ?encrypted ?endpoint
           ?enhanced_vpc_routing ?final_snapshot_identifier
           ?iam_roles ?id ?kms_key_id ?maintenance_track_name
           ?manage_master_password ?manual_snapshot_retention_period
           ?master_password ?master_password_secret_kms_key_id
           ?master_username ?multi_az ?number_of_nodes ?owner_account
           ?port ?preferred_maintenance_window ?publicly_accessible
           ?skip_final_snapshot ?snapshot_arn
           ?snapshot_cluster_identifier ?snapshot_identifier ?tags
           ?tags_all ?vpc_security_group_ids ?timeouts
           ~cluster_identifier ~node_type ~logging ~snapshot_copy ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_version_upgrade ?apply_immediately
      ?aqua_configuration_status ?automated_snapshot_retention_period
      ?availability_zone ?availability_zone_relocation_enabled
      ?cluster_parameter_group_name ?cluster_public_key
      ?cluster_revision_number ?cluster_subnet_group_name
      ?cluster_type ?cluster_version ?database_name
      ?default_iam_role_arn ?elastic_ip ?encrypted ?endpoint
      ?enhanced_vpc_routing ?final_snapshot_identifier ?iam_roles ?id
      ?kms_key_id ?maintenance_track_name ?manage_master_password
      ?manual_snapshot_retention_period ?master_password
      ?master_password_secret_kms_key_id ?master_username ?multi_az
      ?number_of_nodes ?owner_account ?port
      ?preferred_maintenance_window ?publicly_accessible
      ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
      ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
      ?timeouts ~cluster_identifier ~node_type ~logging
      ~snapshot_copy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
