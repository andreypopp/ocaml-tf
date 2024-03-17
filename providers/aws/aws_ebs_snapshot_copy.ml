(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_snapshot_copy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy__timeouts *)

type aws_ebs_snapshot_copy = {
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  source_region : string prop;  (** source_region *)
  source_snapshot_id : string prop;  (** source_snapshot_id *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  timeouts : aws_ebs_snapshot_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy *)

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
  source_region : string prop;
  source_snapshot_id : string prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

let aws_ebs_snapshot_copy ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~source_region
    ~source_snapshot_id __resource_id =
  let __resource_type = "aws_ebs_snapshot_copy" in
  let __resource =
    ({
       description;
       encrypted;
       id;
       kms_key_id;
       permanent_restore;
       source_region;
       source_snapshot_id;
       storage_tier;
       tags;
       tags_all;
       temporary_restore_days;
       timeouts;
     }
      : aws_ebs_snapshot_copy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot_copy __resource);
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
       source_region =
         Prop.computed __resource_type __resource_id "source_region";
       source_snapshot_id =
         Prop.computed __resource_type __resource_id
           "source_snapshot_id";
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
