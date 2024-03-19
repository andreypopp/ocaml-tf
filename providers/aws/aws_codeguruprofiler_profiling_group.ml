(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type agent_orchestration_config = {
  profiling_enabled : bool prop;  (** profiling_enabled *)
}
[@@deriving yojson_of]
(** agent_orchestration_config *)

type aws_codeguruprofiler_profiling_group = {
  compute_platform : string prop option; [@option]
      (** compute_platform *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  agent_orchestration_config : agent_orchestration_config list;
}
[@@deriving yojson_of]
(** aws_codeguruprofiler_profiling_group *)

let agent_orchestration_config ~profiling_enabled () :
    agent_orchestration_config =
  { profiling_enabled }

let aws_codeguruprofiler_profiling_group ?compute_platform ?tags
    ~name ~agent_orchestration_config () :
    aws_codeguruprofiler_profiling_group =
  { compute_platform; name; tags; agent_orchestration_config }

type t = {
  arn : string prop;
  compute_platform : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?compute_platform ?tags ~name
    ~agent_orchestration_config __resource_id =
  let __resource_type = "aws_codeguruprofiler_profiling_group" in
  let __resource =
    aws_codeguruprofiler_profiling_group ?compute_platform ?tags
      ~name ~agent_orchestration_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeguruprofiler_profiling_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compute_platform =
         Prop.computed __resource_type __resource_id
           "compute_platform";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
