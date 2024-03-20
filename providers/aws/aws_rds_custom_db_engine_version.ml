(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_rds_custom_db_engine_version = {
  database_installation_files_s3_bucket_name : string prop option;
      [@option]
  database_installation_files_s3_prefix : string prop option;
      [@option]
  description : string prop option; [@option]
  engine : string prop;
  engine_version : string prop;
  filename : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  manifest : string prop option; [@option]
  manifest_hash : string prop option; [@option]
  source_image_id : string prop option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_custom_db_engine_version) -> ()

let yojson_of_aws_rds_custom_db_engine_version =
  (function
   | {
       database_installation_files_s3_bucket_name =
         v_database_installation_files_s3_bucket_name;
       database_installation_files_s3_prefix =
         v_database_installation_files_s3_prefix;
       description = v_description;
       engine = v_engine;
       engine_version = v_engine_version;
       filename = v_filename;
       id = v_id;
       kms_key_id = v_kms_key_id;
       manifest = v_manifest;
       manifest_hash = v_manifest_hash;
       source_image_id = v_source_image_id;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_image_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_image_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manifest_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manifest_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manifest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manifest", arg in
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
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engine_version
         in
         ("engine_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_installation_files_s3_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "database_installation_files_s3_prefix", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_database_installation_files_s3_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "database_installation_files_s3_bucket_name", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_custom_db_engine_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_custom_db_engine_version

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_custom_db_engine_version
    ?database_installation_files_s3_bucket_name
    ?database_installation_files_s3_prefix ?description ?filename ?id
    ?kms_key_id ?manifest ?manifest_hash ?source_image_id ?status
    ?tags ?tags_all ?timeouts ~engine ~engine_version () :
    aws_rds_custom_db_engine_version =
  {
    database_installation_files_s3_bucket_name;
    database_installation_files_s3_prefix;
    description;
    engine;
    engine_version;
    filename;
    id;
    kms_key_id;
    manifest;
    manifest_hash;
    source_image_id;
    status;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  create_time : string prop;
  database_installation_files_s3_bucket_name : string prop;
  database_installation_files_s3_prefix : string prop;
  db_parameter_group_family : string prop;
  description : string prop;
  engine : string prop;
  engine_version : string prop;
  filename : string prop;
  id : string prop;
  image_id : string prop;
  kms_key_id : string prop;
  major_engine_version : string prop;
  manifest : string prop;
  manifest_computed : string prop;
  manifest_hash : string prop;
  source_image_id : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?database_installation_files_s3_bucket_name
    ?database_installation_files_s3_prefix ?description ?filename ?id
    ?kms_key_id ?manifest ?manifest_hash ?source_image_id ?status
    ?tags ?tags_all ?timeouts ~engine ~engine_version __id =
  let __type = "aws_rds_custom_db_engine_version" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       create_time = Prop.computed __type __id "create_time";
       database_installation_files_s3_bucket_name =
         Prop.computed __type __id
           "database_installation_files_s3_bucket_name";
       database_installation_files_s3_prefix =
         Prop.computed __type __id
           "database_installation_files_s3_prefix";
       db_parameter_group_family =
         Prop.computed __type __id "db_parameter_group_family";
       description = Prop.computed __type __id "description";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       filename = Prop.computed __type __id "filename";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       major_engine_version =
         Prop.computed __type __id "major_engine_version";
       manifest = Prop.computed __type __id "manifest";
       manifest_computed =
         Prop.computed __type __id "manifest_computed";
       manifest_hash = Prop.computed __type __id "manifest_hash";
       source_image_id = Prop.computed __type __id "source_image_id";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_custom_db_engine_version
        (aws_rds_custom_db_engine_version
           ?database_installation_files_s3_bucket_name
           ?database_installation_files_s3_prefix ?description
           ?filename ?id ?kms_key_id ?manifest ?manifest_hash
           ?source_image_id ?status ?tags ?tags_all ?timeouts ~engine
           ~engine_version ());
    attrs = __attrs;
  }

let register ?tf_module ?database_installation_files_s3_bucket_name
    ?database_installation_files_s3_prefix ?description ?filename ?id
    ?kms_key_id ?manifest ?manifest_hash ?source_image_id ?status
    ?tags ?tags_all ?timeouts ~engine ~engine_version __id =
  let (r : _ Tf_core.resource) =
    make ?database_installation_files_s3_bucket_name
      ?database_installation_files_s3_prefix ?description ?filename
      ?id ?kms_key_id ?manifest ?manifest_hash ?source_image_id
      ?status ?tags ?tags_all ?timeouts ~engine ~engine_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
