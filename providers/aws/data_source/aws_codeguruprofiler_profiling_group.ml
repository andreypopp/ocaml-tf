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

type profiling_status__latest_aggregated_profile = {
  period : string prop;
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profiling_status__latest_aggregated_profile) -> ()

let yojson_of_profiling_status__latest_aggregated_profile =
  (function
   | { period = v_period; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_period in
         ("period", arg) :: bnds
       in
       `Assoc bnds
    : profiling_status__latest_aggregated_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profiling_status__latest_aggregated_profile

[@@@deriving.end]

type profiling_status = {
  latest_agent_orchestrated_at : string prop;
  latest_agent_profile_reported_at : string prop;
  latest_aggregated_profile :
    profiling_status__latest_aggregated_profile list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profiling_status) -> ()

let yojson_of_profiling_status =
  (function
   | {
       latest_agent_orchestrated_at = v_latest_agent_orchestrated_at;
       latest_agent_profile_reported_at =
         v_latest_agent_profile_reported_at;
       latest_aggregated_profile = v_latest_aggregated_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_latest_aggregated_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_profiling_status__latest_aggregated_profile)
               v_latest_aggregated_profile
           in
           let bnd = "latest_aggregated_profile", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_agent_profile_reported_at
         in
         ("latest_agent_profile_reported_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_agent_orchestrated_at
         in
         ("latest_agent_orchestrated_at", arg) :: bnds
       in
       `Assoc bnds
    : profiling_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profiling_status

[@@@deriving.end]

type aws_codeguruprofiler_profiling_group = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeguruprofiler_profiling_group) -> ()

let yojson_of_aws_codeguruprofiler_profiling_group =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_codeguruprofiler_profiling_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeguruprofiler_profiling_group

[@@@deriving.end]

let aws_codeguruprofiler_profiling_group ~name () :
    aws_codeguruprofiler_profiling_group =
  { name }

type t = {
  tf_name : string;
  agent_orchestration_config : agent_orchestration_config list prop;
  arn : string prop;
  compute_platform : string prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  profiling_status : profiling_status list prop;
  tags : (string * string) list prop;
  updated_at : string prop;
}

let make ~name __id =
  let __type = "aws_codeguruprofiler_profiling_group" in
  let __attrs =
    ({
       tf_name = __id;
       agent_orchestration_config =
         Prop.computed __type __id "agent_orchestration_config";
       arn = Prop.computed __type __id "arn";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       profiling_status =
         Prop.computed __type __id "profiling_status";
       tags = Prop.computed __type __id "tags";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeguruprofiler_profiling_group
        (aws_codeguruprofiler_profiling_group ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
