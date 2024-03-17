(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_repository = {
  default_branch : string prop option; [@option]
      (** default_branch *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  repository_name : string prop;  (** repository_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codecommit_repository *)

type t = {
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  default_branch : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_codecommit_repository ?default_branch ?description ?id
    ?kms_key_id ?tags ?tags_all ~repository_name __resource_id =
  let __resource_type = "aws_codecommit_repository" in
  let __resource =
    ({
       default_branch;
       description;
       id;
       kms_key_id;
       repository_name;
       tags;
       tags_all;
     }
      : aws_codecommit_repository)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_repository __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       clone_url_http =
         Prop.computed __resource_type __resource_id "clone_url_http";
       clone_url_ssh =
         Prop.computed __resource_type __resource_id "clone_url_ssh";
       default_branch =
         Prop.computed __resource_type __resource_id "default_branch";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       repository_id =
         Prop.computed __resource_type __resource_id "repository_id";
       repository_name =
         Prop.computed __resource_type __resource_id
           "repository_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
