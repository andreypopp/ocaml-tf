(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_workflow = {
  default_run_properties : (string * string prop) list option;
      [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  max_concurrent_runs : float prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_workflow) -> ()

let yojson_of_aws_glue_workflow =
  (function
   | {
       default_run_properties = v_default_run_properties;
       description = v_description;
       id = v_id;
       max_concurrent_runs = v_max_concurrent_runs;
       name = v_name;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_runs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_runs", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_run_properties with
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
             let bnd = "default_run_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_workflow

[@@@deriving.end]

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

let make ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __id =
  let __type = "aws_glue_workflow" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_run_properties =
         Prop.computed __type __id "default_run_properties";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_concurrent_runs =
         Prop.computed __type __id "max_concurrent_runs";
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
      yojson_of_aws_glue_workflow
        (aws_glue_workflow ?default_run_properties ?description ?id
           ?max_concurrent_runs ?name ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?default_run_properties ?description ?id
      ?max_concurrent_runs ?name ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
