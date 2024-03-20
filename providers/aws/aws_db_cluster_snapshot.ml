(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_cluster_snapshot = {
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  db_cluster_snapshot_identifier : string prop;
      (** db_cluster_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_cluster_snapshot *)

let timeouts ?create () : timeouts = { create }

let aws_db_cluster_snapshot ?id ?tags ?tags_all ?timeouts
    ~db_cluster_identifier ~db_cluster_snapshot_identifier () :
    aws_db_cluster_snapshot =
  {
    db_cluster_identifier;
    db_cluster_snapshot_identifier;
    id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  license_model : string prop;
  port : float prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~db_cluster_identifier
    ~db_cluster_snapshot_identifier __id =
  let __type = "aws_db_cluster_snapshot" in
  let __attrs =
    ({
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       db_cluster_identifier =
         Prop.computed __type __id "db_cluster_identifier";
       db_cluster_snapshot_arn =
         Prop.computed __type __id "db_cluster_snapshot_arn";
       db_cluster_snapshot_identifier =
         Prop.computed __type __id "db_cluster_snapshot_identifier";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       license_model = Prop.computed __type __id "license_model";
       port = Prop.computed __type __id "port";
       snapshot_type = Prop.computed __type __id "snapshot_type";
       source_db_cluster_snapshot_arn =
         Prop.computed __type __id "source_db_cluster_snapshot_arn";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_cluster_snapshot
        (aws_db_cluster_snapshot ?id ?tags ?tags_all ?timeouts
           ~db_cluster_identifier ~db_cluster_snapshot_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~db_cluster_identifier ~db_cluster_snapshot_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~db_cluster_identifier
      ~db_cluster_snapshot_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
