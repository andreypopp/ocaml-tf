(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_metadata_options = {
  http_put_response_hop_limit : float prop option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string prop option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** instance_metadata_options *)

type logging__s3_logs = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** logging__s3_logs *)

type logging = { s3_logs : logging__s3_logs list }
[@@deriving yojson_of]
(** logging *)

type aws_imagebuilder_infrastructure_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_profile_name : string prop;  (** instance_profile_name *)
  instance_types : string prop list option; [@option]
      (** instance_types *)
  key_pair : string prop option; [@option]  (** key_pair *)
  name : string prop;  (** name *)
  resource_tags : (string * string prop) list option; [@option]
      (** resource_tags *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  sns_topic_arn : string prop option; [@option]  (** sns_topic_arn *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  terminate_instance_on_failure : bool prop option; [@option]
      (** terminate_instance_on_failure *)
  instance_metadata_options : instance_metadata_options list;
  logging : logging list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration *)

let instance_metadata_options ?http_put_response_hop_limit
    ?http_tokens () : instance_metadata_options =
  { http_put_response_hop_limit; http_tokens }

let logging__s3_logs ?s3_key_prefix ~s3_bucket_name () :
    logging__s3_logs =
  { s3_bucket_name; s3_key_prefix }

let logging ~s3_logs () : logging = { s3_logs }

let aws_imagebuilder_infrastructure_configuration ?description ?id
    ?instance_types ?key_pair ?resource_tags ?security_group_ids
    ?sns_topic_arn ?subnet_id ?tags ?tags_all
    ?terminate_instance_on_failure ~instance_profile_name ~name
    ~instance_metadata_options ~logging () :
    aws_imagebuilder_infrastructure_configuration =
  {
    description;
    id;
    instance_profile_name;
    instance_types;
    key_pair;
    name;
    resource_tags;
    security_group_ids;
    sns_topic_arn;
    subnet_id;
    tags;
    tags_all;
    terminate_instance_on_failure;
    instance_metadata_options;
    logging;
  }

type t = {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  instance_profile_name : string prop;
  instance_types : string list prop;
  key_pair : string prop;
  name : string prop;
  resource_tags : (string * string) list prop;
  security_group_ids : string list prop;
  sns_topic_arn : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  terminate_instance_on_failure : bool prop;
}

let make ?description ?id ?instance_types ?key_pair ?resource_tags
    ?security_group_ids ?sns_topic_arn ?subnet_id ?tags ?tags_all
    ?terminate_instance_on_failure ~instance_profile_name ~name
    ~instance_metadata_options ~logging __id =
  let __type = "aws_imagebuilder_infrastructure_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_profile_name =
         Prop.computed __type __id "instance_profile_name";
       instance_types = Prop.computed __type __id "instance_types";
       key_pair = Prop.computed __type __id "key_pair";
       name = Prop.computed __type __id "name";
       resource_tags = Prop.computed __type __id "resource_tags";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       terminate_instance_on_failure =
         Prop.computed __type __id "terminate_instance_on_failure";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_infrastructure_configuration
        (aws_imagebuilder_infrastructure_configuration ?description
           ?id ?instance_types ?key_pair ?resource_tags
           ?security_group_ids ?sns_topic_arn ?subnet_id ?tags
           ?tags_all ?terminate_instance_on_failure
           ~instance_profile_name ~name ~instance_metadata_options
           ~logging ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?instance_types ?key_pair
    ?resource_tags ?security_group_ids ?sns_topic_arn ?subnet_id
    ?tags ?tags_all ?terminate_instance_on_failure
    ~instance_profile_name ~name ~instance_metadata_options ~logging
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?instance_types ?key_pair ?resource_tags
      ?security_group_ids ?sns_topic_arn ?subnet_id ?tags ?tags_all
      ?terminate_instance_on_failure ~instance_profile_name ~name
      ~instance_metadata_options ~logging __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
