(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_uris = {
  resource_type : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_uris) -> ()

let yojson_of_resource_uris =
  (function
   | { resource_type = v_resource_type; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       `Assoc bnds
    : resource_uris -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_uris

[@@@deriving.end]

type aws_glue_user_defined_function = {
  catalog_id : string prop option; [@option]
  class_name : string prop;
  database_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
  resource_uris : resource_uris list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_user_defined_function) -> ()

let yojson_of_aws_glue_user_defined_function =
  (function
   | {
       catalog_id = v_catalog_id;
       class_name = v_class_name;
       database_name = v_database_name;
       id = v_id;
       name = v_name;
       owner_name = v_owner_name;
       owner_type = v_owner_type;
       resource_uris = v_resource_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_uris then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_uris) v_resource_uris
           in
           let bnd = "resource_uris", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner_type in
         ("owner_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner_name in
         ("owner_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_class_name in
         ("class_name", arg) :: bnds
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
    : aws_glue_user_defined_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_user_defined_function

[@@@deriving.end]

let resource_uris ~resource_type ~uri () : resource_uris =
  { resource_type; uri }

let aws_glue_user_defined_function ?catalog_id ?id ~class_name
    ~database_name ~name ~owner_name ~owner_type ~resource_uris () :
    aws_glue_user_defined_function =
  {
    catalog_id;
    class_name;
    database_name;
    id;
    name;
    owner_name;
    owner_type;
    resource_uris;
  }

type t = {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  class_name : string prop;
  create_time : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
}

let make ?catalog_id ?id ~class_name ~database_name ~name ~owner_name
    ~owner_type ~resource_uris __id =
  let __type = "aws_glue_user_defined_function" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       class_name = Prop.computed __type __id "class_name";
       create_time = Prop.computed __type __id "create_time";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_name = Prop.computed __type __id "owner_name";
       owner_type = Prop.computed __type __id "owner_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_user_defined_function
        (aws_glue_user_defined_function ?catalog_id ?id ~class_name
           ~database_name ~name ~owner_name ~owner_type
           ~resource_uris ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ~class_name ~database_name
    ~name ~owner_name ~owner_type ~resource_uris __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ~class_name ~database_name ~name ~owner_name
      ~owner_type ~resource_uris __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
