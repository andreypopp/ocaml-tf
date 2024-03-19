(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type s3_config = {
  bucket_access_role_arn : string prop;  (** bucket_access_role_arn *)
}
[@@deriving yojson_of]
(** s3_config *)

type aws_datasync_location_s3 = {
  agent_arns : string prop list option; [@option]  (** agent_arns *)
  id : string prop option; [@option]  (** id *)
  s3_bucket_arn : string prop;  (** s3_bucket_arn *)
  s3_storage_class : string prop option; [@option]
      (** s3_storage_class *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  s3_config : s3_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_s3 *)

let s3_config ~bucket_access_role_arn () : s3_config =
  { bucket_access_role_arn }

let aws_datasync_location_s3 ?agent_arns ?id ?s3_storage_class ?tags
    ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config () :
    aws_datasync_location_s3 =
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

type t = {
  agent_arns : string list prop;
  arn : string prop;
  id : string prop;
  s3_bucket_arn : string prop;
  s3_storage_class : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let register ?tf_module ?agent_arns ?id ?s3_storage_class ?tags
    ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config __resource_id =
  let __resource_type = "aws_datasync_location_s3" in
  let __resource =
    aws_datasync_location_s3 ?agent_arns ?id ?s3_storage_class ?tags
      ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_s3 __resource);
  let __resource_attributes =
    ({
       agent_arns =
         Prop.computed __resource_type __resource_id "agent_arns";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       s3_bucket_arn =
         Prop.computed __resource_type __resource_id "s3_bucket_arn";
       s3_storage_class =
         Prop.computed __resource_type __resource_id
           "s3_storage_class";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
