(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_deployment_strategy = {
  deployment_duration_in_minutes : float prop;
  description : string prop option; [@option]
  final_bake_time_in_minutes : float prop option; [@option]
  growth_factor : float prop;
  growth_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  replicate_to : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_deployment_strategy) -> ()

let yojson_of_aws_appconfig_deployment_strategy =
  (function
   | {
       deployment_duration_in_minutes =
         v_deployment_duration_in_minutes;
       description = v_description;
       final_bake_time_in_minutes = v_final_bake_time_in_minutes;
       growth_factor = v_growth_factor;
       growth_type = v_growth_type;
       id = v_id;
       name = v_name;
       replicate_to = v_replicate_to;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_replicate_to in
         ("replicate_to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_growth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "growth_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_growth_factor in
         ("growth_factor", arg) :: bnds
       in
       let bnds =
         match v_final_bake_time_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "final_bake_time_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_deployment_duration_in_minutes
         in
         ("deployment_duration_in_minutes", arg) :: bnds
       in
       `Assoc bnds
    : aws_appconfig_deployment_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_deployment_strategy

[@@@deriving.end]

let aws_appconfig_deployment_strategy ?description
    ?final_bake_time_in_minutes ?growth_type ?id ?tags ?tags_all
    ~deployment_duration_in_minutes ~growth_factor ~name
    ~replicate_to () : aws_appconfig_deployment_strategy =
  {
    deployment_duration_in_minutes;
    description;
    final_bake_time_in_minutes;
    growth_factor;
    growth_type;
    id;
    name;
    replicate_to;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  deployment_duration_in_minutes : float prop;
  description : string prop;
  final_bake_time_in_minutes : float prop;
  growth_factor : float prop;
  growth_type : string prop;
  id : string prop;
  name : string prop;
  replicate_to : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?final_bake_time_in_minutes ?growth_type ?id
    ?tags ?tags_all ~deployment_duration_in_minutes ~growth_factor
    ~name ~replicate_to __id =
  let __type = "aws_appconfig_deployment_strategy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       deployment_duration_in_minutes =
         Prop.computed __type __id "deployment_duration_in_minutes";
       description = Prop.computed __type __id "description";
       final_bake_time_in_minutes =
         Prop.computed __type __id "final_bake_time_in_minutes";
       growth_factor = Prop.computed __type __id "growth_factor";
       growth_type = Prop.computed __type __id "growth_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       replicate_to = Prop.computed __type __id "replicate_to";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_deployment_strategy
        (aws_appconfig_deployment_strategy ?description
           ?final_bake_time_in_minutes ?growth_type ?id ?tags
           ?tags_all ~deployment_duration_in_minutes ~growth_factor
           ~name ~replicate_to ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?final_bake_time_in_minutes
    ?growth_type ?id ?tags ?tags_all ~deployment_duration_in_minutes
    ~growth_factor ~name ~replicate_to __id =
  let (r : _ Tf_core.resource) =
    make ?description ?final_bake_time_in_minutes ?growth_type ?id
      ?tags ?tags_all ~deployment_duration_in_minutes ~growth_factor
      ~name ~replicate_to __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
