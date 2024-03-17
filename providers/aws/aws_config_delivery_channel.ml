(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_delivery_channel__snapshot_delivery_properties = {
  delivery_frequency : string prop option; [@option]
      (** delivery_frequency *)
}
[@@deriving yojson_of]
(** aws_config_delivery_channel__snapshot_delivery_properties *)

type aws_config_delivery_channel = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
  s3_kms_key_arn : string prop option; [@option]
      (** s3_kms_key_arn *)
  sns_topic_arn : string prop option; [@option]  (** sns_topic_arn *)
  snapshot_delivery_properties :
    aws_config_delivery_channel__snapshot_delivery_properties list;
}
[@@deriving yojson_of]
(** aws_config_delivery_channel *)

type t = {
  id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  s3_kms_key_arn : string prop;
  sns_topic_arn : string prop;
}

let aws_config_delivery_channel ?id ?name ?s3_key_prefix
    ?s3_kms_key_arn ?sns_topic_arn ~s3_bucket_name
    ~snapshot_delivery_properties __resource_id =
  let __resource_type = "aws_config_delivery_channel" in
  let __resource =
    ({
       id;
       name;
       s3_bucket_name;
       s3_key_prefix;
       s3_kms_key_arn;
       sns_topic_arn;
       snapshot_delivery_properties;
     }
      : aws_config_delivery_channel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_delivery_channel __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       s3_bucket_name =
         Prop.computed __resource_type __resource_id "s3_bucket_name";
       s3_key_prefix =
         Prop.computed __resource_type __resource_id "s3_key_prefix";
       s3_kms_key_arn =
         Prop.computed __resource_type __resource_id "s3_kms_key_arn";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
     }
      : t)
  in
  __resource_attributes
