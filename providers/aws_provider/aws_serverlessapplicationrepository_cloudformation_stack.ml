(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_serverlessapplicationrepository_cloudformation_stack__timeouts *)

type aws_serverlessapplicationrepository_cloudformation_stack = {
  application_id : string;  (** application_id *)
  capabilities : string list;  (** capabilities *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    aws_serverlessapplicationrepository_cloudformation_stack__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_serverlessapplicationrepository_cloudformation_stack *)

let aws_serverlessapplicationrepository_cloudformation_stack ?tags
    ?timeouts ~application_id ~capabilities ~name __resource_id =
  let __resource_type =
    "aws_serverlessapplicationrepository_cloudformation_stack"
  in
  let __resource =
    { application_id; capabilities; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_serverlessapplicationrepository_cloudformation_stack
       __resource);
  ()
