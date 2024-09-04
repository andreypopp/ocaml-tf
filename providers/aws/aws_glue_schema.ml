(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_schema = {
  compatibility : string prop;
  data_format : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  registry_arn : string prop option; [@option]
  schema_definition : string prop;
  schema_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_schema) -> ()

let yojson_of_aws_glue_schema =
  (function
   | {
       compatibility = v_compatibility;
       data_format = v_data_format;
       description = v_description;
       id = v_id;
       registry_arn = v_registry_arn;
       schema_definition = v_schema_definition;
       schema_name = v_schema_name;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema_name in
         ("schema_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schema_definition
         in
         ("schema_definition", arg) :: bnds
       in
       let bnds =
         match v_registry_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_data_format in
         ("data_format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compatibility in
         ("compatibility", arg) :: bnds
       in
       `Assoc bnds
    : aws_glue_schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_schema

[@@@deriving.end]

let aws_glue_schema ?description ?id ?registry_arn ?tags ?tags_all
    ~compatibility ~data_format ~schema_definition ~schema_name () :
    aws_glue_schema =
  {
    compatibility;
    data_format;
    description;
    id;
    registry_arn;
    schema_definition;
    schema_name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  compatibility : string prop;
  data_format : string prop;
  description : string prop;
  id : string prop;
  latest_schema_version : float prop;
  next_schema_version : float prop;
  registry_arn : string prop;
  registry_name : string prop;
  schema_checkpoint : float prop;
  schema_definition : string prop;
  schema_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?id ?registry_arn ?tags ?tags_all
    ~compatibility ~data_format ~schema_definition ~schema_name __id
    =
  let __type = "aws_glue_schema" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       compatibility = Prop.computed __type __id "compatibility";
       data_format = Prop.computed __type __id "data_format";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       latest_schema_version =
         Prop.computed __type __id "latest_schema_version";
       next_schema_version =
         Prop.computed __type __id "next_schema_version";
       registry_arn = Prop.computed __type __id "registry_arn";
       registry_name = Prop.computed __type __id "registry_name";
       schema_checkpoint =
         Prop.computed __type __id "schema_checkpoint";
       schema_definition =
         Prop.computed __type __id "schema_definition";
       schema_name = Prop.computed __type __id "schema_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_schema
        (aws_glue_schema ?description ?id ?registry_arn ?tags
           ?tags_all ~compatibility ~data_format ~schema_definition
           ~schema_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?registry_arn ?tags
    ?tags_all ~compatibility ~data_format ~schema_definition
    ~schema_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?registry_arn ?tags ?tags_all
      ~compatibility ~data_format ~schema_definition ~schema_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
