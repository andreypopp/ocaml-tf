(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?shared_accounts ?tags ?tags_all
    ?timeouts ~db_instance_identifier ~db_snapshot_identifier
    __resource_id =
  let __resource_type = "aws_db_snapshot" in
  let __resource =
    aws_db_snapshot ?id ?shared_accounts ?tags ?tags_all ?timeouts
      ~db_instance_identifier ~db_snapshot_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_snapshot __resource);
  let __resource_attributes =
    ({
       allocated_storage =
         Prop.computed __resource_type __resource_id
           "allocated_storage";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       db_instance_identifier =
         Prop.computed __resource_type __resource_id
           "db_instance_identifier";
       db_snapshot_arn =
         Prop.computed __resource_type __resource_id
           "db_snapshot_arn";
       db_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "db_snapshot_identifier";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       iops = Prop.computed __resource_type __resource_id "iops";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       license_model =
         Prop.computed __resource_type __resource_id "license_model";
       option_group_name =
         Prop.computed __resource_type __resource_id
           "option_group_name";
       port = Prop.computed __resource_type __resource_id "port";
       shared_accounts =
         Prop.computed __resource_type __resource_id
           "shared_accounts";
       snapshot_type =
         Prop.computed __resource_type __resource_id "snapshot_type";
       source_db_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "source_db_snapshot_identifier";
       source_region =
         Prop.computed __resource_type __resource_id "source_region";
       status = Prop.computed __resource_type __resource_id "status";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
