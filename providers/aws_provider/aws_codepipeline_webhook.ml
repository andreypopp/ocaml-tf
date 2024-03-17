(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codepipeline_webhook__authentication_configuration = {
  allowed_ip_range : string prop option; [@option]
      (** allowed_ip_range *)
  secret_token : string prop option; [@option]  (** secret_token *)
}
[@@deriving yojson_of]
(** aws_codepipeline_webhook__authentication_configuration *)

type aws_codepipeline_webhook__filter = {
  json_path : string prop;  (** json_path *)
  match_equals : string prop;  (** match_equals *)
}
[@@deriving yojson_of]
(** aws_codepipeline_webhook__filter *)

type aws_codepipeline_webhook = {
  authentication : string prop;  (** authentication *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_action : string prop;  (** target_action *)
  target_pipeline : string prop;  (** target_pipeline *)
  authentication_configuration :
    aws_codepipeline_webhook__authentication_configuration list;
  filter : aws_codepipeline_webhook__filter list;
}
[@@deriving yojson_of]
(** aws_codepipeline_webhook *)

type t = {
  arn : string prop;
  authentication : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_action : string prop;
  target_pipeline : string prop;
  url : string prop;
}

let aws_codepipeline_webhook ?id ?tags ?tags_all ~authentication
    ~name ~target_action ~target_pipeline
    ~authentication_configuration ~filter __resource_id =
  let __resource_type = "aws_codepipeline_webhook" in
  let __resource =
    ({
       authentication;
       id;
       name;
       tags;
       tags_all;
       target_action;
       target_pipeline;
       authentication_configuration;
       filter;
     }
      : aws_codepipeline_webhook)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codepipeline_webhook __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication =
         Prop.computed __resource_type __resource_id "authentication";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_action =
         Prop.computed __resource_type __resource_id "target_action";
       target_pipeline =
         Prop.computed __resource_type __resource_id
           "target_pipeline";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
