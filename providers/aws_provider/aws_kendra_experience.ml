(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_kendra_experience__configuration__content_source_configuration = {
  data_source_ids : string list option; [@option]
      (** data_source_ids *)
  direct_put_content : bool option; [@option]
      (** direct_put_content *)
  faq_ids : string list option; [@option]  (** faq_ids *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration__content_source_configuration *)

type aws_kendra_experience__configuration__user_identity_configuration = {
  identity_attribute_name : string;  (** identity_attribute_name *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration__user_identity_configuration *)

type aws_kendra_experience__configuration = {
  content_source_configuration :
    aws_kendra_experience__configuration__content_source_configuration
    list;
  user_identity_configuration :
    aws_kendra_experience__configuration__user_identity_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration *)

type aws_kendra_experience__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__timeouts *)

type aws_kendra_experience__endpoints = {
  endpoint : string;  (** endpoint *)
  endpoint_type : string;  (** endpoint_type *)
}
[@@deriving yojson_of]

type aws_kendra_experience = {
  description : string option; [@option]  (** description *)
  index_id : string;  (** index_id *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  configuration : aws_kendra_experience__configuration list;
  timeouts : aws_kendra_experience__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_experience *)

let aws_kendra_experience ?description ?timeouts ~index_id ~name
    ~role_arn ~configuration __resource_id =
  let __resource_type = "aws_kendra_experience" in
  let __resource =
    {
      description;
      index_id;
      name;
      role_arn;
      configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_experience __resource);
  ()
