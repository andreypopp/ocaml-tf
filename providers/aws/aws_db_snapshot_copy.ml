(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_snapshot_copy = {
  copy_tags : bool prop option; [@option]  (** copy_tags *)
  destination_region : string prop option; [@option]
      (** destination_region *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  option_group_name : string prop option; [@option]
      (** option_group_name *)
  presigned_url : string prop option; [@option]  (** presigned_url *)
  source_db_snapshot_identifier : string prop;
      (** source_db_snapshot_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_custom_availability_zone : string prop option; [@option]
      (** target_custom_availability_zone *)
  target_db_snapshot_identifier : string prop;
      (** target_db_snapshot_identifier *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_snapshot_copy *)

let timeouts ?create () : timeouts = { create }

let aws_db_snapshot_copy ?copy_tags ?destination_region ?id
    ?kms_key_id ?option_group_name ?presigned_url ?tags ?tags_all
    ?target_custom_availability_zone ?timeouts
    ~source_db_snapshot_identifier ~target_db_snapshot_identifier ()
    : aws_db_snapshot_copy =
  {
    copy_tags;
    destination_region;
    id;
    kms_key_id;
    option_group_name;
    presigned_url;
    source_db_snapshot_identifier;
    tags;
    tags_all;
    target_custom_availability_zone;
    target_db_snapshot_identifier;
    timeouts;
  }

type t = {
  allocated_storage : float prop;
  availability_zone : string prop;
  copy_tags : bool prop;
  db_snapshot_arn : string prop;
  destination_region : string prop;
  encrypted : bool prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  option_group_name : string prop;
  port : float prop;
  presigned_url : string prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_custom_availability_zone : string prop;
  target_db_snapshot_identifier : string prop;
  vpc_id : string prop;
}

let make ?copy_tags ?destination_region ?id ?kms_key_id
    ?option_group_name ?presigned_url ?tags ?tags_all
    ?target_custom_availability_zone ?timeouts
    ~source_db_snapshot_identifier ~target_db_snapshot_identifier
    __id =
  let __type = "aws_db_snapshot_copy" in
  let __attrs =
    ({
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       copy_tags = Prop.computed __type __id "copy_tags";
       db_snapshot_arn = Prop.computed __type __id "db_snapshot_arn";
       destination_region =
         Prop.computed __type __id "destination_region";
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
       presigned_url = Prop.computed __type __id "presigned_url";
       snapshot_type = Prop.computed __type __id "snapshot_type";
       source_db_snapshot_identifier =
         Prop.computed __type __id "source_db_snapshot_identifier";
       source_region = Prop.computed __type __id "source_region";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_custom_availability_zone =
         Prop.computed __type __id "target_custom_availability_zone";
       target_db_snapshot_identifier =
         Prop.computed __type __id "target_db_snapshot_identifier";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_snapshot_copy
        (aws_db_snapshot_copy ?copy_tags ?destination_region ?id
           ?kms_key_id ?option_group_name ?presigned_url ?tags
           ?tags_all ?target_custom_availability_zone ?timeouts
           ~source_db_snapshot_identifier
           ~target_db_snapshot_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_tags ?destination_region ?id
    ?kms_key_id ?option_group_name ?presigned_url ?tags ?tags_all
    ?target_custom_availability_zone ?timeouts
    ~source_db_snapshot_identifier ~target_db_snapshot_identifier
    __id =
  let (r : _ Tf_core.resource) =
    make ?copy_tags ?destination_region ?id ?kms_key_id
      ?option_group_name ?presigned_url ?tags ?tags_all
      ?target_custom_availability_zone ?timeouts
      ~source_db_snapshot_identifier ~target_db_snapshot_identifier
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
