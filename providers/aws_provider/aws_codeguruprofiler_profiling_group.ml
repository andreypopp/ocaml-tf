(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeguruprofiler_profiling_group__agent_orchestration_config = {
  profiling_enabled : bool prop;  (** profiling_enabled *)
}
[@@deriving yojson_of]
(** aws_codeguruprofiler_profiling_group__agent_orchestration_config *)

type aws_codeguruprofiler_profiling_group = {
  compute_platform : string prop option; [@option]
      (** compute_platform *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  agent_orchestration_config :
    aws_codeguruprofiler_profiling_group__agent_orchestration_config
    list;
}
[@@deriving yojson_of]
(** aws_codeguruprofiler_profiling_group *)

let aws_codeguruprofiler_profiling_group ?compute_platform ?tags
    ~name ~agent_orchestration_config __resource_id =
  let __resource_type = "aws_codeguruprofiler_profiling_group" in
  let __resource =
    { compute_platform; name; tags; agent_orchestration_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeguruprofiler_profiling_group __resource);
  ()
