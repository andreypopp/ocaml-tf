(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dms_replication_instance = {
  allocated_storage : float prop option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  network_type : string prop option; [@option]  (** network_type *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  replication_instance_class : string prop;
      (** replication_instance_class *)
  replication_instance_id : string prop;
      (** replication_instance_id *)
  replication_subnet_group_id : string prop option; [@option]
      (** replication_subnet_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_replication_instance *)

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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
