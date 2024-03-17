(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_layer_version = {
  compatible_architectures : string prop list option; [@option]
      (** compatible_architectures *)
  compatible_runtimes : string prop list option; [@option]
      (** compatible_runtimes *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  layer_name : string prop;  (** layer_name *)
  license_info : string prop option; [@option]  (** license_info *)
  s3_bucket : string prop option; [@option]  (** s3_bucket *)
  s3_key : string prop option; [@option]  (** s3_key *)
  s3_object_version : string prop option; [@option]
      (** s3_object_version *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  source_code_hash : string prop option; [@option]
      (** source_code_hash *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version *)

type t = {
  arn : string prop;
  compatible_architectures : string list prop;
  compatible_runtimes : string list prop;
  created_date : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  layer_arn : string prop;
  layer_name : string prop;
  license_info : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  version : string prop;
}

let aws_lambda_layer_version ?compatible_architectures
    ?compatible_runtimes ?description ?filename ?id ?license_info
    ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ~layer_name __resource_id =
  let __resource_type = "aws_lambda_layer_version" in
  let __resource =
    ({
       compatible_architectures;
       compatible_runtimes;
       description;
       filename;
       id;
       layer_name;
       license_info;
       s3_bucket;
       s3_key;
       s3_object_version;
       skip_destroy;
       source_code_hash;
     }
      : aws_lambda_layer_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_layer_version __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compatible_architectures =
         Prop.computed __resource_type __resource_id
           "compatible_architectures";
       compatible_runtimes =
         Prop.computed __resource_type __resource_id
           "compatible_runtimes";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       filename =
         Prop.computed __resource_type __resource_id "filename";
       id = Prop.computed __resource_type __resource_id "id";
       layer_arn =
         Prop.computed __resource_type __resource_id "layer_arn";
       layer_name =
         Prop.computed __resource_type __resource_id "layer_name";
       license_info =
         Prop.computed __resource_type __resource_id "license_info";
       s3_bucket =
         Prop.computed __resource_type __resource_id "s3_bucket";
       s3_key = Prop.computed __resource_type __resource_id "s3_key";
       s3_object_version =
         Prop.computed __resource_type __resource_id
           "s3_object_version";
       signing_job_arn =
         Prop.computed __resource_type __resource_id
           "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __resource_type __resource_id
           "signing_profile_version_arn";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       source_code_hash =
         Prop.computed __resource_type __resource_id
           "source_code_hash";
       source_code_size =
         Prop.computed __resource_type __resource_id
           "source_code_size";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
