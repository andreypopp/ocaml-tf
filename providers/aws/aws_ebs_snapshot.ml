(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ebs_snapshot = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  volume_id : string prop;  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_snapshot ?description ?id ?outpost_arn ?permanent_restore
    ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
    ~volume_id () : aws_ebs_snapshot =
  {
    description;
    id;
    outpost_arn;
    permanent_restore;
    storage_tier;
    tags;
    tags_all;
    temporary_restore_days;
    volume_id;
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
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

let register ?tf_module ?description ?id ?outpost_arn
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~volume_id __resource_id =
  let __resource_type = "aws_ebs_snapshot" in
  let __resource =
    aws_ebs_snapshot ?description ?id ?outpost_arn ?permanent_restore
      ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
      ~volume_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot __resource);
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
