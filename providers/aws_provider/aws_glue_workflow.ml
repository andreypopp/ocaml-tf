(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_workflow = {
  default_run_properties : (string * string prop) list option;
      [@option]
      (** default_run_properties *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  max_concurrent_runs : float prop option; [@option]
      (** max_concurrent_runs *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_workflow *)

let aws_glue_workflow ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __resource_id =
  let __resource_type = "aws_glue_workflow" in
  let __resource =
    {
      default_run_properties;
      description;
      id;
      max_concurrent_runs;
      name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_workflow __resource);
  ()
