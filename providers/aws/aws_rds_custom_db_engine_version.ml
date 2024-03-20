(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_rds_custom_db_engine_version = {
  database_installation_files_s3_bucket_name : string prop option;
      [@option]
      (** database_installation_files_s3_bucket_name *)
  database_installation_files_s3_prefix : string prop option;
      [@option]
      (** database_installation_files_s3_prefix *)
  description : string prop option; [@option]  (** description *)
  engine : string prop;  (** engine *)
  engine_version : string prop;  (** engine_version *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  manifest : string prop option; [@option]  (** manifest *)
  manifest_hash : string prop option; [@option]  (** manifest_hash *)
  source_image_id : string prop option; [@option]
      (** source_image_id *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_custom_db_engine_version *)

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
