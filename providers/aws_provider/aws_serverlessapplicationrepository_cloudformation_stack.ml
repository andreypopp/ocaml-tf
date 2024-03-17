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

type t = {
  application_id : string prop;
  capabilities : string list prop;
  id : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  semantic_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_serverlessapplicationrepository_cloudformation_stack ?id
    ?parameters ?semantic_version ?tags ?tags_all ?timeouts
    ~application_id ~capabilities ~name __resource_id =
  let __resource_type =
    "aws_serverlessapplicationrepository_cloudformation_stack"
  in
  let __resource =
    ({
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
      : aws_serverlessapplicationrepository_cloudformation_stack)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_serverlessapplicationrepository_cloudformation_stack
       __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       capabilities =
         Prop.computed __resource_type __resource_id "capabilities";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       outputs =
         Prop.computed __resource_type __resource_id "outputs";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       semantic_version =
         Prop.computed __resource_type __resource_id
           "semantic_version";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
