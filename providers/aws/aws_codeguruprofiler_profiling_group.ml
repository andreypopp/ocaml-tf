(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type agent_orchestration_config = { profiling_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_orchestration_config) -> ()

let yojson_of_agent_orchestration_config =
  (function
   | { profiling_enabled = v_profiling_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_profiling_enabled
         in
         ("profiling_enabled", arg) :: bnds
       in
       `Assoc bnds
    : agent_orchestration_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_orchestration_config

[@@@deriving.end]

type aws_codeguruprofiler_profiling_group = {
  compute_platform : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  agent_orchestration_config : agent_orchestration_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeguruprofiler_profiling_group) -> ()

let yojson_of_aws_codeguruprofiler_profiling_group =
  (function
   | {
       compute_platform = v_compute_platform;
       name = v_name;
       tags = v_tags;
       agent_orchestration_config = v_agent_orchestration_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_agent_orchestration_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_agent_orchestration_config)
               v_agent_orchestration_config
           in
           let bnd = "agent_orchestration_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_compute_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_platform", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codeguruprofiler_profiling_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeguruprofiler_profiling_group

[@@@deriving.end]

let agent_orchestration_config ~profiling_enabled () :
    agent_orchestration_config =
  { profiling_enabled }

let aws_codeguruprofiler_profiling_group ?compute_platform ?tags
    ?(agent_orchestration_config = []) ~name () :
    aws_codeguruprofiler_profiling_group =
  { compute_platform; name; tags; agent_orchestration_config }

type t = {
  tf_name : string;
  arn : string prop;
  compute_platform : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?compute_platform ?tags ?(agent_orchestration_config = [])
    ~name __id =
  let __type = "aws_codeguruprofiler_profiling_group" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~agent_orchestration_config ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_platform ?tags
    ?(agent_orchestration_config = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?compute_platform ?tags ~agent_orchestration_config ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
