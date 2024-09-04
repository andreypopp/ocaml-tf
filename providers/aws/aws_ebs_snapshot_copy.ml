(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ebs_snapshot_copy = {
  description : string prop option; [@option]
  encrypted : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  permanent_restore : bool prop option; [@option]
  source_region : string prop;
  source_snapshot_id : string prop;
  storage_tier : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  temporary_restore_days : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_snapshot_copy) -> ()

let yojson_of_aws_ebs_snapshot_copy =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       kms_key_id = v_kms_key_id;
       permanent_restore = v_permanent_restore;
       source_region = v_source_region;
       source_snapshot_id = v_source_snapshot_id;
       storage_tier = v_storage_tier;
       tags = v_tags;
       tags_all = v_tags_all;
       temporary_restore_days = v_temporary_restore_days;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_temporary_restore_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "temporary_restore_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_tier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_snapshot_id
         in
         ("source_snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_region in
         ("source_region", arg) :: bnds
       in
       let bnds =
         match v_permanent_restore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permanent_restore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ebs_snapshot_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_snapshot_copy

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
       tf_name = __id;
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
