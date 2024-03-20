(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_delivery_properties = {
  delivery_frequency : string prop option; [@option]
      (** delivery_frequency *)
}
[@@deriving yojson_of]
(** snapshot_delivery_properties *)

type aws_config_delivery_channel = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
  s3_kms_key_arn : string prop option; [@option]
      (** s3_kms_key_arn *)
  sns_topic_arn : string prop option; [@option]  (** sns_topic_arn *)
  snapshot_delivery_properties : snapshot_delivery_properties list;
}
[@@deriving yojson_of]
(** aws_config_delivery_channel *)

let snapshot_delivery_properties ?delivery_frequency () :
    snapshot_delivery_properties =
  { delivery_frequency }

let aws_config_delivery_channel ?id ?name ?s3_key_prefix
    ?s3_kms_key_arn ?sns_topic_arn ~s3_bucket_name
    ~snapshot_delivery_properties () : aws_config_delivery_channel =
  {
    id;
    name;
    s3_bucket_name;
    s3_key_prefix;
    s3_kms_key_arn;
    sns_topic_arn;
    snapshot_delivery_properties;
  }

type t = {
  id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  s3_kms_key_arn : string prop;
  sns_topic_arn : string prop;
}

let make ?id ?name ?s3_key_prefix ?s3_kms_key_arn ?sns_topic_arn
    ~s3_bucket_name ~snapshot_delivery_properties __id =
  let __type = "aws_config_delivery_channel" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       s3_bucket_name = Prop.computed __type __id "s3_bucket_name";
       s3_key_prefix = Prop.computed __type __id "s3_key_prefix";
       s3_kms_key_arn = Prop.computed __type __id "s3_kms_key_arn";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_delivery_channel
        (aws_config_delivery_channel ?id ?name ?s3_key_prefix
           ?s3_kms_key_arn ?sns_topic_arn ~s3_bucket_name
           ~snapshot_delivery_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?s3_key_prefix ?s3_kms_key_arn
    ?sns_topic_arn ~s3_bucket_name ~snapshot_delivery_properties __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?s3_key_prefix ?s3_kms_key_arn ?sns_topic_arn
      ~s3_bucket_name ~snapshot_delivery_properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
