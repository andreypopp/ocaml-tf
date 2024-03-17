(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_snapshot_copy__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_db_snapshot_copy__timeouts *)

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
  timeouts : aws_db_snapshot_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_snapshot_copy *)

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

let aws_db_snapshot_copy ?copy_tags ?destination_region ?id
    ?kms_key_id ?option_group_name ?presigned_url ?tags ?tags_all
    ?target_custom_availability_zone ?timeouts
    ~source_db_snapshot_identifier ~target_db_snapshot_identifier
    __resource_id =
  let __resource_type = "aws_db_snapshot_copy" in
  let __resource =
    ({
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
      : aws_db_snapshot_copy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_snapshot_copy __resource);
  let __resource_attributes =
    ({
       allocated_storage =
         Prop.computed __resource_type __resource_id
           "allocated_storage";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       copy_tags =
         Prop.computed __resource_type __resource_id "copy_tags";
       db_snapshot_arn =
         Prop.computed __resource_type __resource_id
           "db_snapshot_arn";
       destination_region =
         Prop.computed __resource_type __resource_id
           "destination_region";
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
       presigned_url =
         Prop.computed __resource_type __resource_id "presigned_url";
       snapshot_type =
         Prop.computed __resource_type __resource_id "snapshot_type";
       source_db_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "source_db_snapshot_identifier";
       source_region =
         Prop.computed __resource_type __resource_id "source_region";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_custom_availability_zone =
         Prop.computed __resource_type __resource_id
           "target_custom_availability_zone";
       target_db_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "target_db_snapshot_identifier";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
