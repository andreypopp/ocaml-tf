(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_s3__s3_config = {
  bucket_access_role_arn : string;  (** bucket_access_role_arn *)
}
[@@deriving yojson_of]
(** aws_datasync_location_s3__s3_config *)

type aws_datasync_location_s3 = {
  agent_arns : string list option; [@option]  (** agent_arns *)
  id : string option; [@option]  (** id *)
  s3_bucket_arn : string;  (** s3_bucket_arn *)
  s3_storage_class : string option; [@option]
      (** s3_storage_class *)
  subdirectory : string;  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  s3_config : aws_datasync_location_s3__s3_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_s3 *)

let aws_datasync_location_s3 ?agent_arns ?id ?s3_storage_class ?tags
    ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config __resource_id =
  let __resource_type = "aws_datasync_location_s3" in
  let __resource =
    {
      agent_arns;
      id;
      s3_bucket_arn;
      s3_storage_class;
      subdirectory;
      tags;
      tags_all;
      s3_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_s3 __resource);
  ()
