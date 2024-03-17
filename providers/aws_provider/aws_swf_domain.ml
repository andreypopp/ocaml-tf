(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_swf_domain = {
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
  workflow_execution_retention_period_in_days : string;
      (** workflow_execution_retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_swf_domain *)

let aws_swf_domain ?description ?tags
    ~workflow_execution_retention_period_in_days __resource_id =
  let __resource_type = "aws_swf_domain" in
  let __resource =
    {
      description;
      tags;
      workflow_execution_retention_period_in_days;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_swf_domain __resource);
  ()
