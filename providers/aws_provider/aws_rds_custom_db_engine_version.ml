(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_custom_db_engine_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_custom_db_engine_version__timeouts *)

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
  timeouts : aws_rds_custom_db_engine_version__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_custom_db_engine_version *)

let aws_rds_custom_db_engine_version
    ?database_installation_files_s3_bucket_name
    ?database_installation_files_s3_prefix ?description ?filename ?id
    ?kms_key_id ?manifest ?manifest_hash ?source_image_id ?status
    ?tags ?tags_all ?timeouts ~engine ~engine_version __resource_id =
  let __resource_type = "aws_rds_custom_db_engine_version" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_custom_db_engine_version __resource);
  ()
