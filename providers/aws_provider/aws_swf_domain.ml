(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_swf_domain = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  workflow_execution_retention_period_in_days : string;
      (** workflow_execution_retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_swf_domain *)

let aws_swf_domain ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days
    __resource_id =
  let __resource_type = "aws_swf_domain" in
  let __resource =
    {
      description;
      id;
      name;
      name_prefix;
      tags;
      tags_all;
      workflow_execution_retention_period_in_days;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_swf_domain __resource);
  ()
