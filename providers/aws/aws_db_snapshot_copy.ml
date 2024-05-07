(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_db_snapshot_copy = {
  copy_tags : bool prop option; [@option]
  destination_region : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  option_group_name : string prop option; [@option]
  presigned_url : string prop option; [@option]
  source_db_snapshot_identifier : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_custom_availability_zone : string prop option; [@option]
  target_db_snapshot_identifier : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_snapshot_copy) -> ()

let yojson_of_aws_db_snapshot_copy =
  (function
   | {
       copy_tags = v_copy_tags;
       destination_region = v_destination_region;
       id = v_id;
       kms_key_id = v_kms_key_id;
       option_group_name = v_option_group_name;
       presigned_url = v_presigned_url;
       source_db_snapshot_identifier =
         v_source_db_snapshot_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       target_custom_availability_zone =
         v_target_custom_availability_zone;
       target_db_snapshot_identifier =
         v_target_db_snapshot_identifier;
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
           yojson_of_prop yojson_of_string
             v_target_db_snapshot_identifier
         in
         ("target_db_snapshot_identifier", arg) :: bnds
       in
       let bnds =
         match v_target_custom_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_custom_availability_zone", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_source_db_snapshot_identifier
         in
         ("source_db_snapshot_identifier", arg) :: bnds
       in
       let bnds =
         match v_presigned_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "presigned_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_option_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "option_group_name", arg in
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
         match v_destination_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_snapshot_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_snapshot_copy

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
