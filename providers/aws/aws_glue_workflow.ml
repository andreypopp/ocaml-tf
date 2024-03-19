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
    ?max_concurrent_runs ?name ?tags ?tags_all () : aws_glue_workflow
    =
  {
    default_run_properties;
    description;
    id;
    max_concurrent_runs;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  default_run_properties : (string * string) list prop;
  description : string prop;
  id : string prop;
  max_concurrent_runs : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __resource_id =
  let __resource_type = "aws_glue_workflow" in
  let __resource =
    aws_glue_workflow ?default_run_properties ?description ?id
      ?max_concurrent_runs ?name ?tags ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_workflow __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_run_properties =
         Prop.computed __resource_type __resource_id
           "default_run_properties";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       max_concurrent_runs =
         Prop.computed __resource_type __resource_id
           "max_concurrent_runs";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
