(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_neptune_cluster_instance = {
  apply_immediately : bool prop option; [@option]
  auto_minor_version_upgrade : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  cluster_identifier : string prop;
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  id : string prop option; [@option]
  identifier : string prop option; [@option]
  identifier_prefix : string prop option; [@option]
  instance_class : string prop;
  neptune_parameter_group_name : string prop option; [@option]
  neptune_subnet_group_name : string prop option; [@option]
  port : float prop option; [@option]
  preferred_backup_window : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  promotion_tier : float prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_neptune_cluster_instance) -> ()

let yojson_of_aws_neptune_cluster_instance =
  (function
   | {
       apply_immediately = v_apply_immediately;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       availability_zone = v_availability_zone;
       cluster_identifier = v_cluster_identifier;
       engine = v_engine;
       engine_version = v_engine_version;
       id = v_id;
       identifier = v_identifier;
       identifier_prefix = v_identifier_prefix;
       instance_class = v_instance_class;
       neptune_parameter_group_name = v_neptune_parameter_group_name;
       neptune_subnet_group_name = v_neptune_subnet_group_name;
       port = v_port;
       preferred_backup_window = v_preferred_backup_window;
       preferred_maintenance_window = v_preferred_maintenance_window;
       promotion_tier = v_promotion_tier;
       publicly_accessible = v_publicly_accessible;
       skip_final_snapshot = v_skip_final_snapshot;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_skip_final_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_final_snapshot", arg in
             bnd :: bnds
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
         match v_promotion_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "promotion_tier", arg in
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_neptune_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptune_subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_neptune_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptune_parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_class
         in
         ("instance_class", arg) :: bnds
       in
       let bnds =
         match v_identifier_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
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
         match v_auto_minor_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_minor_version_upgrade", arg in
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
    : aws_neptune_cluster_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_neptune_cluster_instance

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_neptune_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?engine
    ?engine_version ?id ?identifier ?identifier_prefix
    ?neptune_parameter_group_name ?neptune_subnet_group_name ?port
    ?preferred_backup_window ?preferred_maintenance_window
    ?promotion_tier ?publicly_accessible ?skip_final_snapshot ?tags
    ?tags_all ?timeouts ~cluster_identifier ~instance_class () :
    aws_neptune_cluster_instance =
  {
    apply_immediately;
    auto_minor_version_upgrade;
    availability_zone;
    cluster_identifier;
    engine;
    engine_version;
    id;
    identifier;
    identifier_prefix;
    instance_class;
    neptune_parameter_group_name;
    neptune_subnet_group_name;
    port;
    preferred_backup_window;
    preferred_maintenance_window;
    promotion_tier;
    publicly_accessible;
    skip_final_snapshot;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  address : string prop;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  cluster_identifier : string prop;
  dbi_resource_id : string prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_arn : string prop;
  neptune_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  writer : bool prop;
}

let make ?apply_immediately ?auto_minor_version_upgrade
    ?availability_zone ?engine ?engine_version ?id ?identifier
    ?identifier_prefix ?neptune_parameter_group_name
    ?neptune_subnet_group_name ?port ?preferred_backup_window
    ?preferred_maintenance_window ?promotion_tier
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ?timeouts ~cluster_identifier ~instance_class __id =
  let __type = "aws_neptune_cluster_instance" in
  let __attrs =
    ({
       address = Prop.computed __type __id "address";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       dbi_resource_id = Prop.computed __type __id "dbi_resource_id";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       identifier_prefix =
         Prop.computed __type __id "identifier_prefix";
       instance_class = Prop.computed __type __id "instance_class";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       neptune_parameter_group_name =
         Prop.computed __type __id "neptune_parameter_group_name";
       neptune_subnet_group_name =
         Prop.computed __type __id "neptune_subnet_group_name";
       port = Prop.computed __type __id "port";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       promotion_tier = Prop.computed __type __id "promotion_tier";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       writer = Prop.computed __type __id "writer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_neptune_cluster_instance
        (aws_neptune_cluster_instance ?apply_immediately
           ?auto_minor_version_upgrade ?availability_zone ?engine
           ?engine_version ?id ?identifier ?identifier_prefix
           ?neptune_parameter_group_name ?neptune_subnet_group_name
           ?port ?preferred_backup_window
           ?preferred_maintenance_window ?promotion_tier
           ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
           ?timeouts ~cluster_identifier ~instance_class ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?engine
    ?engine_version ?id ?identifier ?identifier_prefix
    ?neptune_parameter_group_name ?neptune_subnet_group_name ?port
    ?preferred_backup_window ?preferred_maintenance_window
    ?promotion_tier ?publicly_accessible ?skip_final_snapshot ?tags
    ?tags_all ?timeouts ~cluster_identifier ~instance_class __id =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?auto_minor_version_upgrade
      ?availability_zone ?engine ?engine_version ?id ?identifier
      ?identifier_prefix ?neptune_parameter_group_name
      ?neptune_subnet_group_name ?port ?preferred_backup_window
      ?preferred_maintenance_window ?promotion_tier
      ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
      ?timeouts ~cluster_identifier ~instance_class __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
