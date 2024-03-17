(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_infrastructure_configuration__instance_metadata_options = {
  http_put_response_hop_limit : float prop option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string prop option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration__instance_metadata_options *)

type aws_imagebuilder_infrastructure_configuration__logging__s3_logs = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration__logging__s3_logs *)

type aws_imagebuilder_infrastructure_configuration__logging = {
  s3_logs :
    aws_imagebuilder_infrastructure_configuration__logging__s3_logs
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration__logging *)

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
  instance_metadata_options :
    aws_imagebuilder_infrastructure_configuration__instance_metadata_options
    list;
  logging :
    aws_imagebuilder_infrastructure_configuration__logging list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration *)

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

let aws_imagebuilder_infrastructure_configuration ?description ?id
    ?instance_types ?key_pair ?resource_tags ?security_group_ids
    ?sns_topic_arn ?subnet_id ?tags ?tags_all
    ?terminate_instance_on_failure ~instance_profile_name ~name
    ~instance_metadata_options ~logging __resource_id =
  let __resource_type =
    "aws_imagebuilder_infrastructure_configuration"
  in
  let __resource =
    ({
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
      : aws_imagebuilder_infrastructure_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_infrastructure_configuration
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       date_created =
         Prop.computed __resource_type __resource_id "date_created";
       date_updated =
         Prop.computed __resource_type __resource_id "date_updated";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       instance_profile_name =
         Prop.computed __resource_type __resource_id
           "instance_profile_name";
       instance_types =
         Prop.computed __resource_type __resource_id "instance_types";
       key_pair =
         Prop.computed __resource_type __resource_id "key_pair";
       name = Prop.computed __resource_type __resource_id "name";
       resource_tags =
         Prop.computed __resource_type __resource_id "resource_tags";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       terminate_instance_on_failure =
         Prop.computed __resource_type __resource_id
           "terminate_instance_on_failure";
     }
      : t)
  in
  __resource_attributes
