(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_snapshot_copy ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~source_region
    ~source_snapshot_id () : aws_ebs_snapshot_copy =
  {
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

let make ?description ?encrypted ?id ?kms_key_id ?permanent_restore
    ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
    ~source_region ~source_snapshot_id __id =
  let __type = "aws_ebs_snapshot_copy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       data_encryption_key_id =
         Prop.computed __type __id "data_encryption_key_id";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_alias = Prop.computed __type __id "owner_alias";
       owner_id = Prop.computed __type __id "owner_id";
       permanent_restore =
         Prop.computed __type __id "permanent_restore";
       source_region = Prop.computed __type __id "source_region";
       source_snapshot_id =
         Prop.computed __type __id "source_snapshot_id";
       storage_tier = Prop.computed __type __id "storage_tier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       temporary_restore_days =
         Prop.computed __type __id "temporary_restore_days";
       volume_id = Prop.computed __type __id "volume_id";
       volume_size = Prop.computed __type __id "volume_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_snapshot_copy
        (aws_ebs_snapshot_copy ?description ?encrypted ?id
           ?kms_key_id ?permanent_restore ?storage_tier ?tags
           ?tags_all ?temporary_restore_days ?timeouts ~source_region
           ~source_snapshot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~source_region
    ~source_snapshot_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encrypted ?id ?kms_key_id ?permanent_restore
      ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
      ~source_region ~source_snapshot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
