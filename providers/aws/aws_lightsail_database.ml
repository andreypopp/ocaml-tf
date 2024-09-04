(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_database = {
  apply_immediately : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  backup_retention_enabled : bool prop option; [@option]
  blueprint_id : string prop;
  bundle_id : string prop;
  final_snapshot_name : string prop option; [@option]
  id : string prop option; [@option]
  master_database_name : string prop;
  master_password : string prop;
  master_username : string prop;
  preferred_backup_window : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  relational_database_name : string prop;
  skip_final_snapshot : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_database) -> ()

let yojson_of_aws_lightsail_database =
  (function
   | {
       apply_immediately = v_apply_immediately;
       availability_zone = v_availability_zone;
       backup_retention_enabled = v_backup_retention_enabled;
       blueprint_id = v_blueprint_id;
       bundle_id = v_bundle_id;
       final_snapshot_name = v_final_snapshot_name;
       id = v_id;
       master_database_name = v_master_database_name;
       master_password = v_master_password;
       master_username = v_master_username;
       preferred_backup_window = v_preferred_backup_window;
       preferred_maintenance_window = v_preferred_maintenance_window;
       publicly_accessible = v_publicly_accessible;
       relational_database_name = v_relational_database_name;
       skip_final_snapshot = v_skip_final_snapshot;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_final_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_final_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relational_database_name
         in
         ("relational_database_name", arg) :: bnds
       in
       let bnds =
         match v_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_accessible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_maintenance_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_backup_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_backup_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_username
         in
         ("master_username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_password
         in
         ("master_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_database_name
         in
         ("master_database_name", arg) :: bnds
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
         match v_final_snapshot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "final_snapshot_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blueprint_id in
         ("blueprint_id", arg) :: bnds
       in
       let bnds =
         match v_backup_retention_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "backup_retention_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_immediately", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lightsail_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_database

[@@@deriving.end]

let aws_lightsail_database ?apply_immediately ?availability_zone
    ?backup_retention_enabled ?final_snapshot_name ?id
    ?preferred_backup_window ?preferred_maintenance_window
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ~blueprint_id ~bundle_id ~master_database_name ~master_password
    ~master_username ~relational_database_name () :
    aws_lightsail_database =
  {
    apply_immediately;
    availability_zone;
    backup_retention_enabled;
    blueprint_id;
    bundle_id;
    final_snapshot_name;
    id;
    master_database_name;
    master_password;
    master_username;
    preferred_backup_window;
    preferred_maintenance_window;
    publicly_accessible;
    relational_database_name;
    skip_final_snapshot;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zone : string prop;
  backup_retention_enabled : bool prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  ca_certificate_identifier : string prop;
  cpu_count : float prop;
  created_at : string prop;
  disk_size : float prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  master_database_name : string prop;
  master_endpoint_address : string prop;
  master_endpoint_port : float prop;
  master_password : string prop;
  master_username : string prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  ram_size : float prop;
  relational_database_name : string prop;
  secondary_availability_zone : string prop;
  skip_final_snapshot : bool prop;
  support_code : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?apply_immediately ?availability_zone
    ?backup_retention_enabled ?final_snapshot_name ?id
    ?preferred_backup_window ?preferred_maintenance_window
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ~blueprint_id ~bundle_id ~master_database_name ~master_password
    ~master_username ~relational_database_name __id =
  let __type = "aws_lightsail_database" in
  let __attrs =
    ({
       tf_name = __id;
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       backup_retention_enabled =
         Prop.computed __type __id "backup_retention_enabled";
       blueprint_id = Prop.computed __type __id "blueprint_id";
       bundle_id = Prop.computed __type __id "bundle_id";
       ca_certificate_identifier =
         Prop.computed __type __id "ca_certificate_identifier";
       cpu_count = Prop.computed __type __id "cpu_count";
       created_at = Prop.computed __type __id "created_at";
       disk_size = Prop.computed __type __id "disk_size";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       final_snapshot_name =
         Prop.computed __type __id "final_snapshot_name";
       id = Prop.computed __type __id "id";
       master_database_name =
         Prop.computed __type __id "master_database_name";
       master_endpoint_address =
         Prop.computed __type __id "master_endpoint_address";
       master_endpoint_port =
         Prop.computed __type __id "master_endpoint_port";
       master_password = Prop.computed __type __id "master_password";
       master_username = Prop.computed __type __id "master_username";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       ram_size = Prop.computed __type __id "ram_size";
       relational_database_name =
         Prop.computed __type __id "relational_database_name";
       secondary_availability_zone =
         Prop.computed __type __id "secondary_availability_zone";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_database
        (aws_lightsail_database ?apply_immediately ?availability_zone
           ?backup_retention_enabled ?final_snapshot_name ?id
           ?preferred_backup_window ?preferred_maintenance_window
           ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
           ~blueprint_id ~bundle_id ~master_database_name
           ~master_password ~master_username
           ~relational_database_name ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately ?availability_zone
    ?backup_retention_enabled ?final_snapshot_name ?id
    ?preferred_backup_window ?preferred_maintenance_window
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ~blueprint_id ~bundle_id ~master_database_name ~master_password
    ~master_username ~relational_database_name __id =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?availability_zone
      ?backup_retention_enabled ?final_snapshot_name ?id
      ?preferred_backup_window ?preferred_maintenance_window
      ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
      ~blueprint_id ~bundle_id ~master_database_name ~master_password
      ~master_username ~relational_database_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
