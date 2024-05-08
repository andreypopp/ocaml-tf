(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitoring_schedule_config__schedule_config = {
  schedule_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_schedule_config__schedule_config) -> ()

let yojson_of_monitoring_schedule_config__schedule_config =
  (function
   | { schedule_expression = v_schedule_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_schedule_config__schedule_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_schedule_config__schedule_config

[@@@deriving.end]

type monitoring_schedule_config = {
  monitoring_job_definition_name : string prop;
  monitoring_type : string prop;
  schedule_config : monitoring_schedule_config__schedule_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_schedule_config) -> ()

let yojson_of_monitoring_schedule_config =
  (function
   | {
       monitoring_job_definition_name =
         v_monitoring_job_definition_name;
       monitoring_type = v_monitoring_type;
       schedule_config = v_schedule_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_schedule_config__schedule_config)
               v_schedule_config
           in
           let bnd = "schedule_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_monitoring_type
         in
         ("monitoring_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_monitoring_job_definition_name
         in
         ("monitoring_job_definition_name", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_schedule_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_schedule_config

[@@@deriving.end]

type aws_sagemaker_monitoring_schedule = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  monitoring_schedule_config : monitoring_schedule_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_monitoring_schedule) -> ()

let yojson_of_aws_sagemaker_monitoring_schedule =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       monitoring_schedule_config = v_monitoring_schedule_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring_schedule_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring_schedule_config)
               v_monitoring_schedule_config
           in
           let bnd = "monitoring_schedule_config", arg in
           bnd :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_monitoring_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_monitoring_schedule

[@@@deriving.end]

let monitoring_schedule_config__schedule_config ~schedule_expression
    () : monitoring_schedule_config__schedule_config =
  { schedule_expression }

let monitoring_schedule_config ?(schedule_config = [])
    ~monitoring_job_definition_name ~monitoring_type () :
    monitoring_schedule_config =
  {
    monitoring_job_definition_name;
    monitoring_type;
    schedule_config;
  }

let aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config () :
    aws_sagemaker_monitoring_schedule =
  { id; name; tags; tags_all; monitoring_schedule_config }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ~monitoring_schedule_config __id =
  let __type = "aws_sagemaker_monitoring_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
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
      yojson_of_aws_sagemaker_monitoring_schedule
        (aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
           ~monitoring_schedule_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~monitoring_schedule_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
