(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_repository__external_connections = {
  external_connection_name : string prop;
      (** external_connection_name *)
  package_format : string prop;  (** package_format *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository__external_connections *)

type aws_codeartifact_repository__upstream = {
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository__upstream *)

type aws_codeartifact_repository = {
  description : string prop option; [@option]  (** description *)
  domain : string prop;  (** domain *)
  domain_owner : string prop option; [@option]  (** domain_owner *)
  id : string prop option; [@option]  (** id *)
  repository : string prop;  (** repository *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  external_connections :
    aws_codeartifact_repository__external_connections list;
  upstream : aws_codeartifact_repository__upstream list;
}
[@@deriving yojson_of]
(** aws_codeartifact_repository *)

type t = {
  administrator_account : string prop;
  arn : string prop;
  description : string prop;
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  repository : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_codeartifact_repository ?description ?domain_owner ?id ?tags
    ?tags_all ~domain ~repository ~external_connections ~upstream
    __resource_id =
  let __resource_type = "aws_codeartifact_repository" in
  let __resource =
    ({
       description;
       domain;
       domain_owner;
       id;
       repository;
       tags;
       tags_all;
       external_connections;
       upstream;
     }
      : aws_codeartifact_repository)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_repository __resource);
  let __resource_attributes =
    ({
       administrator_account =
         Prop.computed __resource_type __resource_id
           "administrator_account";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       domain = Prop.computed __resource_type __resource_id "domain";
       domain_owner =
         Prop.computed __resource_type __resource_id "domain_owner";
       id = Prop.computed __resource_type __resource_id "id";
       repository =
         Prop.computed __resource_type __resource_id "repository";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
