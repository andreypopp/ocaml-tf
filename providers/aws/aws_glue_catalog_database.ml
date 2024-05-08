(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_table_default_permission__principal = {
  data_lake_principal_identifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : create_table_default_permission__principal) -> ()

let yojson_of_create_table_default_permission__principal =
  (function
   | {
       data_lake_principal_identifier =
         v_data_lake_principal_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_data_lake_principal_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_lake_principal_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : create_table_default_permission__principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_table_default_permission__principal

[@@@deriving.end]

type create_table_default_permission = {
  permissions : string prop list option; [@option]
  principal : create_table_default_permission__principal list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : create_table_default_permission) -> ()

let yojson_of_create_table_default_permission =
  (function
   | { permissions = v_permissions; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_principal then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_create_table_default_permission__principal)
               v_principal
           in
           let bnd = "principal", arg in
           bnd :: bnds
       in
       let bnds =
         match v_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permissions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : create_table_default_permission ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_table_default_permission

[@@@deriving.end]

type federated_database = {
  connection_name : string prop option; [@option]
  identifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : federated_database) -> ()

let yojson_of_federated_database =
  (function
   | {
       connection_name = v_connection_name;
       identifier = v_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : federated_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_federated_database

[@@@deriving.end]

type target_database = {
  catalog_id : string prop;
  database_name : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_database) -> ()

let yojson_of_target_database =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_catalog_id in
         ("catalog_id", arg) :: bnds
       in
       `Assoc bnds
    : target_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_database

[@@@deriving.end]

type aws_glue_catalog_database = {
  catalog_id : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  location_uri : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  create_table_default_permission :
    create_table_default_permission list;
      [@default []] [@yojson_drop_default ( = )]
  federated_database : federated_database list;
      [@default []] [@yojson_drop_default ( = )]
  target_database : target_database list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_catalog_database) -> ()

let yojson_of_aws_glue_catalog_database =
  (function
   | {
       catalog_id = v_catalog_id;
       description = v_description;
       id = v_id;
       location_uri = v_location_uri;
       name = v_name;
       parameters = v_parameters;
       tags = v_tags;
       tags_all = v_tags_all;
       create_table_default_permission =
         v_create_table_default_permission;
       federated_database = v_federated_database;
       target_database = v_target_database;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_target_database then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_database)
               v_target_database
           in
           let bnd = "target_database", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_federated_database then bnds
         else
           let arg =
             (yojson_of_list yojson_of_federated_database)
               v_federated_database
           in
           let bnd = "federated_database", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_create_table_default_permission then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_create_table_default_permission)
               v_create_table_default_permission
           in
           let bnd = "create_table_default_permission", arg in
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
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_uri", arg in
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
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_catalog_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_catalog_database

[@@@deriving.end]

let create_table_default_permission__principal
    ?data_lake_principal_identifier () :
    create_table_default_permission__principal =
  { data_lake_principal_identifier }

let create_table_default_permission ?permissions ?(principal = []) ()
    : create_table_default_permission =
  { permissions; principal }

let federated_database ?connection_name ?identifier () :
    federated_database =
  { connection_name; identifier }

let target_database ?region ~catalog_id ~database_name () :
    target_database =
  { catalog_id; database_name; region }

let aws_glue_catalog_database ?catalog_id ?description ?id
    ?location_uri ?parameters ?tags ?tags_all
    ?(create_table_default_permission = [])
    ?(federated_database = []) ?(target_database = []) ~name () :
    aws_glue_catalog_database =
  {
    catalog_id;
    description;
    id;
    location_uri;
    name;
    parameters;
    tags;
    tags_all;
    create_table_default_permission;
    federated_database;
    target_database;
  }

type t = {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  description : string prop;
  id : string prop;
  location_uri : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?catalog_id ?description ?id ?location_uri ?parameters ?tags
    ?tags_all ?(create_table_default_permission = [])
    ?(federated_database = []) ?(target_database = []) ~name __id =
  let __type = "aws_glue_catalog_database" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location_uri = Prop.computed __type __id "location_uri";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_catalog_database
        (aws_glue_catalog_database ?catalog_id ?description ?id
           ?location_uri ?parameters ?tags ?tags_all
           ~create_table_default_permission ~federated_database
           ~target_database ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?description ?id ?location_uri
    ?parameters ?tags ?tags_all
    ?(create_table_default_permission = [])
    ?(federated_database = []) ?(target_database = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?description ?id ?location_uri ?parameters ?tags
      ?tags_all ~create_table_default_permission ~federated_database
      ~target_database ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
