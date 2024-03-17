(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lambda_layer_version = {
  compatible_architectures : string list option; [@option]
      (** compatible_architectures *)
  compatible_runtimes : string list option; [@option]
      (** compatible_runtimes *)
  description : string option; [@option]  (** description *)
  filename : string option; [@option]  (** filename *)
  layer_name : string;  (** layer_name *)
  license_info : string option; [@option]  (** license_info *)
  s3_bucket : string option; [@option]  (** s3_bucket *)
  s3_key : string option; [@option]  (** s3_key *)
  s3_object_version : string option; [@option]
      (** s3_object_version *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version *)

let aws_lambda_layer_version ?compatible_architectures
    ?compatible_runtimes ?description ?filename ?license_info
    ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy ~layer_name
    __resource_id =
  let __resource_type = "aws_lambda_layer_version" in
  let __resource =
    {
      compatible_architectures;
      compatible_runtimes;
      description;
      filename;
      layer_name;
      license_info;
      s3_bucket;
      s3_key;
      s3_object_version;
      skip_destroy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_layer_version __resource);
  ()
