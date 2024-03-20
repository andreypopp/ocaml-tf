(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_snapshot = {
  db_instance_identifier : string prop;
      (** db_instance_identifier *)
  db_snapshot_identifier : string prop;
      (** db_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  shared_accounts : string prop list option; [@option]
      (** shared_accounts *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_snapshot *)

let timeouts ?create () : timeouts = { create }

let aws_db_snapshot ?id ?shared_accounts ?tags ?tags_all ?timeouts
    ~db_instance_identifier ~db_snapshot_identifier () :
    aws_db_snapshot =
  {
    db_instance_identifier;
    db_snapshot_identifier;
    id;
    shared_accounts;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  allocated_storage : float prop;
  availability_zone : string prop;
  db_instance_identifier : string prop;
  db_snapshot_arn : string prop;
  db_snapshot_identifier : string prop;
  encrypted : bool prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  option_group_name : string prop;
  port : float prop;
  shared_accounts : string list prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  status : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?shared_accounts ?tags ?tags_all ?timeouts
    ~db_instance_identifier ~db_snapshot_identifier __id =
  let __type = "aws_db_snapshot" in
  let __attrs =
    ({
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       db_instance_identifier =
         Prop.computed __type __id "db_instance_identifier";
       db_snapshot_arn = Prop.computed __type __id "db_snapshot_arn";
       db_snapshot_identifier =
         Prop.computed __type __id "db_snapshot_identifier";
       encrypted = Prop.computed __type __id "encrypted";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       license_model = Prop.computed __type __id "license_model";
       option_group_name =
         Prop.computed __type __id "option_group_name";
       port = Prop.computed __type __id "port";
       shared_accounts = Prop.computed __type __id "shared_accounts";
       snapshot_type = Prop.computed __type __id "snapshot_type";
       source_db_snapshot_identifier =
         Prop.computed __type __id "source_db_snapshot_identifier";
       source_region = Prop.computed __type __id "source_region";
       status = Prop.computed __type __id "status";
       storage_type = Prop.computed __type __id "storage_type";
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
      yojson_of_aws_db_snapshot
        (aws_db_snapshot ?id ?shared_accounts ?tags ?tags_all
           ?timeouts ~db_instance_identifier ~db_snapshot_identifier
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?shared_accounts ?tags ?tags_all
    ?timeouts ~db_instance_identifier ~db_snapshot_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?shared_accounts ?tags ?tags_all ?timeouts
      ~db_instance_identifier ~db_snapshot_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
