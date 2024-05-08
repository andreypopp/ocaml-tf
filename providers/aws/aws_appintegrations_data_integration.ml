(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule_config = {
  first_execution_from : string prop;
  object_ : string prop; [@key "object"]
  schedule_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule_config) -> ()

let yojson_of_schedule_config =
  (function
   | {
       first_execution_from = v_first_execution_from;
       object_ = v_object_;
       schedule_expression = v_schedule_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_first_execution_from
         in
         ("first_execution_from", arg) :: bnds
       in
       `Assoc bnds
    : schedule_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule_config

[@@@deriving.end]

type aws_appintegrations_data_integration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key : string prop;
  name : string prop;
  source_uri : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  schedule_config : schedule_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appintegrations_data_integration) -> ()

let yojson_of_aws_appintegrations_data_integration =
  (function
   | {
       description = v_description;
       id = v_id;
       kms_key = v_kms_key;
       name = v_name;
       source_uri = v_source_uri;
       tags = v_tags;
       tags_all = v_tags_all;
       schedule_config = v_schedule_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_schedule_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule_config)
               v_schedule_config
           in
           let bnd = "schedule_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_source_uri in
         ("source_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key in
         ("kms_key", arg) :: bnds
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
       `Assoc bnds
    : aws_appintegrations_data_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appintegrations_data_integration

[@@@deriving.end]

let schedule_config ~first_execution_from ~object_
    ~schedule_expression () : schedule_config =
  { first_execution_from; object_; schedule_expression }

let aws_appintegrations_data_integration ?description ?id ?tags
    ?tags_all ~kms_key ~name ~source_uri ~schedule_config () :
    aws_appintegrations_data_integration =
  {
    description;
    id;
    kms_key;
    name;
    source_uri;
    tags;
    tags_all;
    schedule_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  source_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~kms_key ~name ~source_uri
    ~schedule_config __id =
  let __type = "aws_appintegrations_data_integration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       name = Prop.computed __type __id "name";
       source_uri = Prop.computed __type __id "source_uri";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appintegrations_data_integration
        (aws_appintegrations_data_integration ?description ?id ?tags
           ?tags_all ~kms_key ~name ~source_uri ~schedule_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~kms_key
    ~name ~source_uri ~schedule_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~kms_key ~name ~source_uri
      ~schedule_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
