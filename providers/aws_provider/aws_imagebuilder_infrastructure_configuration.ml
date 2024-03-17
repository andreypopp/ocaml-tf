(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_imagebuilder_infrastructure_configuration__instance_metadata_options = {
  http_put_response_hop_limit : float option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration__instance_metadata_options *)

type aws_imagebuilder_infrastructure_configuration__logging__s3_logs = {
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
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
  description : string option; [@option]  (** description *)
  instance_profile_name : string;  (** instance_profile_name *)
  instance_types : string list option; [@option]
      (** instance_types *)
  key_pair : string option; [@option]  (** key_pair *)
  name : string;  (** name *)
  resource_tags : (string * string) list option; [@option]
      (** resource_tags *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  sns_topic_arn : string option; [@option]  (** sns_topic_arn *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  terminate_instance_on_failure : bool option; [@option]
      (** terminate_instance_on_failure *)
  instance_metadata_options :
    aws_imagebuilder_infrastructure_configuration__instance_metadata_options
    list;
  logging :
    aws_imagebuilder_infrastructure_configuration__logging list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_infrastructure_configuration *)

let aws_imagebuilder_infrastructure_configuration ?description
    ?instance_types ?key_pair ?resource_tags ?security_group_ids
    ?sns_topic_arn ?subnet_id ?tags ?terminate_instance_on_failure
    ~instance_profile_name ~name ~instance_metadata_options ~logging
    __resource_id =
  let __resource_type =
    "aws_imagebuilder_infrastructure_configuration"
  in
  let __resource =
    {
      description;
      instance_profile_name;
      instance_types;
      key_pair;
      name;
      resource_tags;
      security_group_ids;
      sns_topic_arn;
      subnet_id;
      tags;
      terminate_instance_on_failure;
      instance_metadata_options;
      logging;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_infrastructure_configuration
       __resource);
  ()
