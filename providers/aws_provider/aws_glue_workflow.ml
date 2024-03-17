(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_workflow = {
  default_run_properties : (string * string) list option; [@option]
      (** default_run_properties *)
  description : string option; [@option]  (** description *)
  max_concurrent_runs : float option; [@option]
      (** max_concurrent_runs *)
  name : string option; [@option]  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_glue_workflow *)

let aws_glue_workflow ?default_run_properties ?description
    ?max_concurrent_runs ?name ?tags __resource_id =
  let __resource_type = "aws_glue_workflow" in
  let __resource =
    {
      default_run_properties;
      description;
      max_concurrent_runs;
      name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_workflow __resource);
  ()
