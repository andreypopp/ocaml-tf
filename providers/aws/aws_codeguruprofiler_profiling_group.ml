(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?compute_platform ?tags ~name ~agent_orchestration_config
    __id =
  let __type = "aws_codeguruprofiler_profiling_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeguruprofiler_profiling_group
        (aws_codeguruprofiler_profiling_group ?compute_platform ?tags
           ~name ~agent_orchestration_config ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_platform ?tags ~name
    ~agent_orchestration_config __id =
  let (r : _ Tf_core.resource) =
    make ?compute_platform ?tags ~name ~agent_orchestration_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
