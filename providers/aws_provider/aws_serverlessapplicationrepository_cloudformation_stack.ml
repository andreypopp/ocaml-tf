(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_serverlessapplicationrepository_cloudformation_stack__timeouts *)

type aws_serverlessapplicationrepository_cloudformation_stack = {
  application_id : string prop;  (** application_id *)
  capabilities : string prop list;  (** capabilities *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  semantic_version : string prop option; [@option]
      (** semantic_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts :
    aws_serverlessapplicationrepository_cloudformation_stack__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_serverlessapplicationrepository_cloudformation_stack *)

let aws_serverlessapplicationrepository_cloudformation_stack ?id
    ?parameters ?semantic_version ?tags ?tags_all ?timeouts
    ~application_id ~capabilities ~name __resource_id =
  let __resource_type =
    "aws_serverlessapplicationrepository_cloudformation_stack"
  in
  let __resource =
    {
      application_id;
      capabilities;
      id;
      name;
      parameters;
      semantic_version;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_serverlessapplicationrepository_cloudformation_stack
       __resource);
  ()
