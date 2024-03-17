(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_repository__external_connections = {
  external_connection_name : string;  (** external_connection_name *)
  package_format : string;  (** package_format *)
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository__external_connections *)

type aws_codeartifact_repository__upstream = {
  repository_name : string;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository__upstream *)

type aws_codeartifact_repository = {
  description : string option; [@option]  (** description *)
  domain : string;  (** domain *)
  domain_owner : string option; [@option]  (** domain_owner *)
  id : string option; [@option]  (** id *)
  repository : string;  (** repository *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  external_connections :
    aws_codeartifact_repository__external_connections list;
  upstream : aws_codeartifact_repository__upstream list;
}
[@@deriving yojson_of]
(** aws_codeartifact_repository *)

let aws_codeartifact_repository ?description ?domain_owner ?id ?tags
    ?tags_all ~domain ~repository ~external_connections ~upstream
    __resource_id =
  let __resource_type = "aws_codeartifact_repository" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_repository __resource);
  ()
