(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type physical_connection_requirements = {
  availability_zone : string prop option; [@option]
  security_group_id_list : string prop list option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_connection_requirements) -> ()

let yojson_of_physical_connection_requirements =
  (function
   | {
       availability_zone = v_availability_zone;
       security_group_id_list = v_security_group_id_list;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_id_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_id_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : physical_connection_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_connection_requirements

[@@@deriving.end]

type aws_glue_connection = {
  catalog_id : string prop option; [@option]
  connection_properties : (string * string prop) list option;
      [@option]
  connection_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  match_criteria : string prop list option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  physical_connection_requirements :
    physical_connection_requirements list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_connection) -> ()

let yojson_of_aws_glue_connection =
  (function
   | {
       catalog_id = v_catalog_id;
       connection_properties = v_connection_properties;
       connection_type = v_connection_type;
       description = v_description;
       id = v_id;
       match_criteria = v_match_criteria;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       physical_connection_requirements =
         v_physical_connection_requirements;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_physical_connection_requirements
             v_physical_connection_requirements
         in
         ("physical_connection_requirements", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_match_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_criteria", arg in
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
         match v_connection_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_properties with
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
             let bnd = "connection_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_connection

[@@@deriving.end]

let physical_connection_requirements ?availability_zone
    ?security_group_id_list ?subnet_id () :
    physical_connection_requirements =
  { availability_zone; security_group_id_list; subnet_id }

let aws_glue_connection ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ?(physical_connection_requirements = []) ~name () :
    aws_glue_connection =
  {
    catalog_id;
    connection_properties;
    connection_type;
    description;
    id;
    match_criteria;
    name;
    tags;
    tags_all;
    physical_connection_requirements;
  }

type t = {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  connection_properties : (string * string) list prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?catalog_id ?connection_properties ?connection_type
    ?description ?id ?match_criteria ?tags ?tags_all
    ?(physical_connection_requirements = []) ~name __id =
  let __type = "aws_glue_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       connection_properties =
         Prop.computed __type __id "connection_properties";
       connection_type = Prop.computed __type __id "connection_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       match_criteria = Prop.computed __type __id "match_criteria";
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
      yojson_of_aws_glue_connection
        (aws_glue_connection ?catalog_id ?connection_properties
           ?connection_type ?description ?id ?match_criteria ?tags
           ?tags_all ~physical_connection_requirements ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ?(physical_connection_requirements = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?connection_properties ?connection_type
      ?description ?id ?match_criteria ?tags ?tags_all
      ~physical_connection_requirements ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
