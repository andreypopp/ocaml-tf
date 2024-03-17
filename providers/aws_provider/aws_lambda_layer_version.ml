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

let aws_lambda_layer_version ?compatible_architectures
    ?compatible_runtimes ?description ?filename ?id ?license_info
    ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ~layer_name __resource_id =
  let __resource_type = "aws_lambda_layer_version" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_layer_version __resource);
  ()
