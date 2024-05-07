(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_data = {
  comment : string prop option; [@option]
  upload_end : string prop option; [@option]
  upload_size : float prop option; [@option]
  upload_start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_data) -> ()

let yojson_of_client_data =
  (function
   | {
       comment = v_comment;
       upload_end = v_upload_end;
       upload_size = v_upload_size;
       upload_start = v_upload_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_upload_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upload_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upload_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "upload_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upload_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upload_end", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_data

[@@@deriving.end]

type disk_container__user_bucket = {
  s3_bucket : string prop;
  s3_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_container__user_bucket) -> ()

let yojson_of_disk_container__user_bucket =
  (function
   | { s3_bucket = v_s3_bucket; s3_key = v_s3_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_key in
         ("s3_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       `Assoc bnds
    : disk_container__user_bucket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_container__user_bucket

[@@@deriving.end]

type disk_container = {
  description : string prop option; [@option]
  format : string prop;
  url : string prop option; [@option]
  user_bucket : disk_container__user_bucket list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_container) -> ()

let yojson_of_disk_container =
  (function
   | {
       description = v_description;
       format = v_format;
       url = v_url;
       user_bucket = v_user_bucket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_disk_container__user_bucket
             v_user_bucket
         in
         ("user_bucket", arg) :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
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
    : disk_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_container

[@@@deriving.end]

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

type aws_ebs_snapshot_import = {
  description : string prop option; [@option]
  encrypted : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  permanent_restore : bool prop option; [@option]
  role_name : string prop option; [@option]
  storage_tier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  temporary_restore_days : float prop option; [@option]
  client_data : client_data list;
  disk_container : disk_container list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_snapshot_import) -> ()

let yojson_of_aws_ebs_snapshot_import =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       kms_key_id = v_kms_key_id;
       permanent_restore = v_permanent_restore;
       role_name = v_role_name;
       storage_tier = v_storage_tier;
       tags = v_tags;
       tags_all = v_tags_all;
       temporary_restore_days = v_temporary_restore_days;
       client_data = v_client_data;
       disk_container = v_disk_container;
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
         let arg =
           yojson_of_list yojson_of_disk_container v_disk_container
         in
         ("disk_container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_data v_client_data
         in
         ("client_data", arg) :: bnds
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         match v_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_name", arg in
             bnd :: bnds
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
    : aws_ebs_snapshot_import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_snapshot_import

[@@@deriving.end]

let client_data ?comment ?upload_end ?upload_size ?upload_start () :
    client_data =
  { comment; upload_end; upload_size; upload_start }

let disk_container__user_bucket ~s3_bucket ~s3_key () :
    disk_container__user_bucket =
  { s3_bucket; s3_key }

let disk_container ?description ?url ?(user_bucket = []) ~format () :
    disk_container =
  { description; format; url; user_bucket }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_snapshot_import ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?(client_data = []) ?timeouts
    ~disk_container () : aws_ebs_snapshot_import =
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
  role_name : string prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

let make ?description ?encrypted ?id ?kms_key_id ?permanent_restore
    ?role_name ?storage_tier ?tags ?tags_all ?temporary_restore_days
    ?(client_data = []) ?timeouts ~disk_container __id =
  let __type = "aws_ebs_snapshot_import" in
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
       role_name = Prop.computed __type __id "role_name";
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
      yojson_of_aws_ebs_snapshot_import
        (aws_ebs_snapshot_import ?description ?encrypted ?id
           ?kms_key_id ?permanent_restore ?role_name ?storage_tier
           ?tags ?tags_all ?temporary_restore_days ~client_data
           ?timeouts ~disk_container ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?(client_data = []) ?timeouts
    ~disk_container __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encrypted ?id ?kms_key_id ?permanent_restore
      ?role_name ?storage_tier ?tags ?tags_all
      ?temporary_restore_days ~client_data ?timeouts ~disk_container
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
