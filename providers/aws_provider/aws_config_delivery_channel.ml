(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_config_delivery_channel__snapshot_delivery_properties = {
  delivery_frequency : string option; [@option]
      (** delivery_frequency *)
}
[@@deriving yojson_of]
(** aws_config_delivery_channel__snapshot_delivery_properties *)

type aws_config_delivery_channel = {
  name : string option; [@option]  (** name *)
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
  s3_kms_key_arn : string option; [@option]  (** s3_kms_key_arn *)
  sns_topic_arn : string option; [@option]  (** sns_topic_arn *)
  snapshot_delivery_properties :
    aws_config_delivery_channel__snapshot_delivery_properties list;
}
[@@deriving yojson_of]
(** aws_config_delivery_channel *)

let aws_config_delivery_channel ?name ?s3_key_prefix ?s3_kms_key_arn
    ?sns_topic_arn ~s3_bucket_name ~snapshot_delivery_properties
    __resource_id =
  let __resource_type = "aws_config_delivery_channel" in
  let __resource =
    {
      name;
      s3_bucket_name;
      s3_key_prefix;
      s3_kms_key_arn;
      sns_topic_arn;
      snapshot_delivery_properties;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_delivery_channel __resource);
  ()
