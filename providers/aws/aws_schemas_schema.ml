(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_schema = {
  content : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  registry_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_schemas_schema) -> ()

let yojson_of_aws_schemas_schema =
  (function
   | {
       content = v_content;
       description = v_description;
       id = v_id;
       name = v_name;
       registry_name = v_registry_name;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_registry_name in
         ("registry_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : aws_schemas_schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_schemas_schema

[@@@deriving.end]

let aws_schemas_schema ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ () : aws_schemas_schema =
  {
    content;
    description;
    id;
    name;
    registry_name;
    tags;
    tags_all;
    type_;
  }

type t = {
  tf_name : string;
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  registry_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  version : string prop;
  version_created_date : string prop;
}

let make ?description ?id ?tags ?tags_all ~content ~name
    ~registry_name ~type_ __id =
  let __type = "aws_schemas_schema" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       name = Prop.computed __type __id "name";
       registry_name = Prop.computed __type __id "registry_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
       version_created_date =
         Prop.computed __type __id "version_created_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_schema
        (aws_schemas_schema ?description ?id ?tags ?tags_all ~content
           ~name ~registry_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~content ~name
      ~registry_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
