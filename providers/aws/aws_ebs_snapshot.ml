(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?outpost_arn ?permanent_restore
    ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
    ~volume_id __id =
  let __type = "aws_ebs_snapshot" in
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
      yojson_of_aws_ebs_snapshot
        (aws_ebs_snapshot ?description ?id ?outpost_arn
           ?permanent_restore ?storage_tier ?tags ?tags_all
           ?temporary_restore_days ?timeouts ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?outpost_arn
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?outpost_arn ?permanent_restore
      ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
      ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
