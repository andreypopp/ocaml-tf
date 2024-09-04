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

type aws_dms_replication_instance = {
  allocated_storage : float prop option; [@option]
  allow_major_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  auto_minor_version_upgrade : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  engine_version : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  multi_az : bool prop option; [@option]
  network_type : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  replication_instance_class : string prop;
  replication_instance_id : string prop;
  replication_subnet_group_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_instance) -> ()

let yojson_of_aws_dms_replication_instance =
  (function
   | {
       allocated_storage = v_allocated_storage;
       allow_major_version_upgrade = v_allow_major_version_upgrade;
       apply_immediately = v_apply_immediately;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       availability_zone = v_availability_zone;
       engine_version = v_engine_version;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       multi_az = v_multi_az;
       network_type = v_network_type;
       preferred_maintenance_window = v_preferred_maintenance_window;
       publicly_accessible = v_publicly_accessible;
       replication_instance_class = v_replication_instance_class;
       replication_instance_id = v_replication_instance_id;
       replication_subnet_group_id = v_replication_subnet_group_id;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
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
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
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
         match v_replication_subnet_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_subnet_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_instance_id
         in
         ("replication_instance_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_instance_class
         in
         ("replication_instance_class", arg) :: bnds
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
         match v_network_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_az", arg in
             bnd :: bnds
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
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
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
       let bnds =
         match v_allow_major_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_major_version_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocated_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocated_storage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dms_replication_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_instance

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dms_replication_instance ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?engine_version
    ?id ?kms_key_arn ?multi_az ?network_type
    ?preferred_maintenance_window ?publicly_accessible
    ?replication_subnet_group_id ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~replication_instance_class
    ~replication_instance_id () : aws_dms_replication_instance =
  {
    allocated_storage;
    allow_major_version_upgrade;
    apply_immediately;
    auto_minor_version_upgrade;
    availability_zone;
    engine_version;
    id;
    kms_key_arn;
    multi_az;
    network_type;
    preferred_maintenance_window;
    publicly_accessible;
    replication_instance_class;
    replication_instance_id;
    replication_subnet_group_id;
    tags;
    tags_all;
    vpc_security_group_ids;
    timeouts;
  }

type t = {
  tf_name : string;
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_arn : string prop;
  multi_az : bool prop;
  network_type : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  replication_instance_arn : string prop;
  replication_instance_class : string prop;
  replication_instance_id : string prop;
  replication_instance_private_ips : string list prop;
  replication_instance_public_ips : string list prop;
  replication_subnet_group_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

let make ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?auto_minor_version_upgrade ?availability_zone
    ?engine_version ?id ?kms_key_arn ?multi_az ?network_type
    ?preferred_maintenance_window ?publicly_accessible
    ?replication_subnet_group_id ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~replication_instance_class
    ~replication_instance_id __id =
  let __type = "aws_dms_replication_instance" in
  let __attrs =
    ({
       tf_name = __id;
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       allow_major_version_upgrade =
         Prop.computed __type __id "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       multi_az = Prop.computed __type __id "multi_az";
       network_type = Prop.computed __type __id "network_type";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       replication_instance_arn =
         Prop.computed __type __id "replication_instance_arn";
       replication_instance_class =
         Prop.computed __type __id "replication_instance_class";
       replication_instance_id =
         Prop.computed __type __id "replication_instance_id";
       replication_instance_private_ips =
         Prop.computed __type __id "replication_instance_private_ips";
       replication_instance_public_ips =
         Prop.computed __type __id "replication_instance_public_ips";
       replication_subnet_group_id =
         Prop.computed __type __id "replication_subnet_group_id";
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
      yojson_of_aws_dms_replication_instance
        (aws_dms_replication_instance ?allocated_storage
           ?allow_major_version_upgrade ?apply_immediately
           ?auto_minor_version_upgrade ?availability_zone
           ?engine_version ?id ?kms_key_arn ?multi_az ?network_type
           ?preferred_maintenance_window ?publicly_accessible
           ?replication_subnet_group_id ?tags ?tags_all
           ?vpc_security_group_ids ?timeouts
           ~replication_instance_class ~replication_instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?engine_version
    ?id ?kms_key_arn ?multi_az ?network_type
    ?preferred_maintenance_window ?publicly_accessible
    ?replication_subnet_group_id ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~replication_instance_class
    ~replication_instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?allocated_storage ?allow_major_version_upgrade
      ?apply_immediately ?auto_minor_version_upgrade
      ?availability_zone ?engine_version ?id ?kms_key_arn ?multi_az
      ?network_type ?preferred_maintenance_window
      ?publicly_accessible ?replication_subnet_group_id ?tags
      ?tags_all ?vpc_security_group_ids ?timeouts
      ~replication_instance_class ~replication_instance_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
