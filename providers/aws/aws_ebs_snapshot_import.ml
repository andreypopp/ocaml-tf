(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type client_data = {
  comment : string prop option; [@option]  (** comment *)
  upload_end : string prop option; [@option]  (** upload_end *)
  upload_size : float prop option; [@option]  (** upload_size *)
  upload_start : string prop option; [@option]  (** upload_start *)
}
[@@deriving yojson_of]
(** client_data *)

type disk_container__user_bucket = {
  s3_bucket : string prop;  (** s3_bucket *)
  s3_key : string prop;  (** s3_key *)
}
[@@deriving yojson_of]
(** disk_container__user_bucket *)

type disk_container = {
  description : string prop option; [@option]  (** description *)
  format : string prop;  (** format *)
  url : string prop option; [@option]  (** url *)
  user_bucket : disk_container__user_bucket list;
}
[@@deriving yojson_of]
(** disk_container *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ebs_snapshot_import = {
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  role_name : string prop option; [@option]  (** role_name *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  client_data : client_data list;
  disk_container : disk_container list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import *)

let client_data ?comment ?upload_end ?upload_size ?upload_start () :
    client_data =
  { comment; upload_end; upload_size; upload_start }

let disk_container__user_bucket ~s3_bucket ~s3_key () :
    disk_container__user_bucket =
  { s3_bucket; s3_key }

let disk_container ?description ?url ~format ~user_bucket () :
    disk_container =
  { description; format; url; user_bucket }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_snapshot_import ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~client_data ~disk_container ()
    : aws_ebs_snapshot_import =
  {
    description;
    encrypted;
    id;
    kms_key_id;
    permanent_restore;
    role_name;
    storage_tier;
    tags;
    tags_all;
    temporary_restore_days;
    client_data;
    disk_container;
    timeouts;
  }

type t = {
  arn : string prop;
  data_encryption_key_id : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  outpost_arn : string prop;
  owner_alias : string prop;
  owner_id : string prop;
  permanent_restore : bool prop;
  role_name : string prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

let register ?tf_module ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~client_data ~disk_container
    __resource_id =
  let __resource_type = "aws_ebs_snapshot_import" in
  let __resource =
    aws_ebs_snapshot_import ?description ?encrypted ?id ?kms_key_id
      ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
      ?temporary_restore_days ?timeouts ~client_data ~disk_container
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot_import __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       data_encryption_key_id =
         Prop.computed __resource_type __resource_id
           "data_encryption_key_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       outpost_arn =
         Prop.computed __resource_type __resource_id "outpost_arn";
       owner_alias =
         Prop.computed __resource_type __resource_id "owner_alias";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       permanent_restore =
         Prop.computed __resource_type __resource_id
           "permanent_restore";
       role_name =
         Prop.computed __resource_type __resource_id "role_name";
       storage_tier =
         Prop.computed __resource_type __resource_id "storage_tier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       temporary_restore_days =
         Prop.computed __resource_type __resource_id
           "temporary_restore_days";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
       volume_size =
         Prop.computed __resource_type __resource_id "volume_size";
     }
      : t)
  in
  __resource_attributes
