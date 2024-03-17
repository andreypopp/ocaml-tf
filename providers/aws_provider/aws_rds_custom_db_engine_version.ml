(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_custom_db_engine_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_custom_db_engine_version__timeouts *)

type aws_rds_custom_db_engine_version = {
  database_installation_files_s3_bucket_name : string option;
      [@option]
      (** database_installation_files_s3_bucket_name *)
  database_installation_files_s3_prefix : string option; [@option]
      (** database_installation_files_s3_prefix *)
  description : string option; [@option]  (** description *)
  engine : string;  (** engine *)
  engine_version : string;  (** engine_version *)
  filename : string option; [@option]  (** filename *)
  manifest : string option; [@option]  (** manifest *)
  manifest_hash : string option; [@option]  (** manifest_hash *)
  source_image_id : string option; [@option]  (** source_image_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_rds_custom_db_engine_version__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_custom_db_engine_version *)

let aws_rds_custom_db_engine_version
    ?database_installation_files_s3_bucket_name
    ?database_installation_files_s3_prefix ?description ?filename
    ?manifest ?manifest_hash ?source_image_id ?tags ?timeouts ~engine
    ~engine_version __resource_id =
  let __resource_type = "aws_rds_custom_db_engine_version" in
  let __resource =
    {
      database_installation_files_s3_bucket_name;
      database_installation_files_s3_prefix;
      description;
      engine;
      engine_version;
      filename;
      manifest;
      manifest_hash;
      source_image_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_custom_db_engine_version __resource);
  ()
