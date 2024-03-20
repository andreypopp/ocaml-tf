(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type feature_definition = {
  feature_name : string prop option; [@option]  (** feature_name *)
  feature_type : string prop option; [@option]  (** feature_type *)
}
[@@deriving yojson_of]
(** feature_definition *)

type offline_store_config__data_catalog_config = {
  catalog : string prop option; [@option]  (** catalog *)
  database : string prop option; [@option]  (** database *)
  table_name : string prop option; [@option]  (** table_name *)
}
[@@deriving yojson_of]
(** offline_store_config__data_catalog_config *)

type offline_store_config__s3_storage_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  resolved_output_s3_uri : string prop option; [@option]
      (** resolved_output_s3_uri *)
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** offline_store_config__s3_storage_config *)

type offline_store_config = {
  disable_glue_table_creation : bool prop option; [@option]
      (** disable_glue_table_creation *)
  table_format : string prop option; [@option]  (** table_format *)
  data_catalog_config :
    offline_store_config__data_catalog_config list;
  s3_storage_config : offline_store_config__s3_storage_config list;
}
[@@deriving yojson_of]
(** offline_store_config *)

type online_store_config__security_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** online_store_config__security_config *)

type online_store_config__ttl_duration = {
  unit : string prop option; [@option]  (** unit *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** online_store_config__ttl_duration *)

type online_store_config = {
  enable_online_store : bool prop option; [@option]
      (** enable_online_store *)
  storage_type : string prop option; [@option]  (** storage_type *)
  security_config : online_store_config__security_config list;
  ttl_duration : online_store_config__ttl_duration list;
}
[@@deriving yojson_of]
(** online_store_config *)

type aws_sagemaker_feature_group = {
  description : string prop option; [@option]  (** description *)
  event_time_feature_name : string prop;
      (** event_time_feature_name *)
  feature_group_name : string prop;  (** feature_group_name *)
  id : string prop option; [@option]  (** id *)
  record_identifier_feature_name : string prop;
      (** record_identifier_feature_name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  feature_definition : feature_definition list;
  offline_store_config : offline_store_config list;
  online_store_config : online_store_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group *)

let feature_definition ?feature_name ?feature_type () :
    feature_definition =
  { feature_name; feature_type }

let offline_store_config__data_catalog_config ?catalog ?database
    ?table_name () : offline_store_config__data_catalog_config =
  { catalog; database; table_name }

let offline_store_config__s3_storage_config ?kms_key_id
    ?resolved_output_s3_uri ~s3_uri () :
    offline_store_config__s3_storage_config =
  { kms_key_id; resolved_output_s3_uri; s3_uri }

let offline_store_config ?disable_glue_table_creation ?table_format
    ~data_catalog_config ~s3_storage_config () : offline_store_config
    =
  {
    disable_glue_table_creation;
    table_format;
    data_catalog_config;
    s3_storage_config;
  }

let online_store_config__security_config ?kms_key_id () :
    online_store_config__security_config =
  { kms_key_id }

let online_store_config__ttl_duration ?unit ?value () :
    online_store_config__ttl_duration =
  { unit; value }

let online_store_config ?enable_online_store ?storage_type
    ~security_config ~ttl_duration () : online_store_config =
  {
    enable_online_store;
    storage_type;
    security_config;
    ttl_duration;
  }

let aws_sagemaker_feature_group ?description ?id ?tags ?tags_all
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition
    ~offline_store_config ~online_store_config () :
    aws_sagemaker_feature_group =
  {
    description;
    event_time_feature_name;
    feature_group_name;
    id;
    record_identifier_feature_name;
    role_arn;
    tags;
    tags_all;
    feature_definition;
    offline_store_config;
    online_store_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  event_time_feature_name : string prop;
  feature_group_name : string prop;
  id : string prop;
  record_identifier_feature_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~event_time_feature_name
    ~feature_group_name ~record_identifier_feature_name ~role_arn
    ~feature_definition ~offline_store_config ~online_store_config
    __id =
  let __type = "aws_sagemaker_feature_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_time_feature_name =
         Prop.computed __type __id "event_time_feature_name";
       feature_group_name =
         Prop.computed __type __id "feature_group_name";
       id = Prop.computed __type __id "id";
       record_identifier_feature_name =
         Prop.computed __type __id "record_identifier_feature_name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_feature_group
        (aws_sagemaker_feature_group ?description ?id ?tags ?tags_all
           ~event_time_feature_name ~feature_group_name
           ~record_identifier_feature_name ~role_arn
           ~feature_definition ~offline_store_config
           ~online_store_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition
    ~offline_store_config ~online_store_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~event_time_feature_name
      ~feature_group_name ~record_identifier_feature_name ~role_arn
      ~feature_definition ~offline_store_config ~online_store_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
