(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_database_default_permissions = {
  permissions : string prop list;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : create_database_default_permissions) -> ()

let yojson_of_create_database_default_permissions =
  (function
   | { permissions = v_permissions; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_permissions
         in
         ("permissions", arg) :: bnds
       in
       `Assoc bnds
    : create_database_default_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_database_default_permissions

[@@@deriving.end]

type create_table_default_permissions = {
  permissions : string prop list;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : create_table_default_permissions) -> ()

let yojson_of_create_table_default_permissions =
  (function
   | { permissions = v_permissions; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_permissions
         in
         ("permissions", arg) :: bnds
       in
       `Assoc bnds
    : create_table_default_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_table_default_permissions

[@@@deriving.end]

type aws_lakeformation_data_lake_settings = {
  catalog_id : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_data_lake_settings) -> ()

let yojson_of_aws_lakeformation_data_lake_settings =
  (function
   | { catalog_id = v_catalog_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_data_lake_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_data_lake_settings

[@@@deriving.end]

let aws_lakeformation_data_lake_settings ?catalog_id ?id () :
    aws_lakeformation_data_lake_settings =
  { catalog_id; id }

type t = {
  tf_name : string;
  admins : string list prop;
  allow_external_data_filtering : bool prop;
  authorized_session_tag_value_list : string list prop;
  catalog_id : string prop;
  create_database_default_permissions :
    create_database_default_permissions list prop;
  create_table_default_permissions :
    create_table_default_permissions list prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

let make ?catalog_id ?id __id =
  let __type = "aws_lakeformation_data_lake_settings" in
  let __attrs =
    ({
       tf_name = __id;
       admins = Prop.computed __type __id "admins";
       allow_external_data_filtering =
         Prop.computed __type __id "allow_external_data_filtering";
       authorized_session_tag_value_list =
         Prop.computed __type __id
           "authorized_session_tag_value_list";
       catalog_id = Prop.computed __type __id "catalog_id";
       create_database_default_permissions =
         Prop.computed __type __id
           "create_database_default_permissions";
       create_table_default_permissions =
         Prop.computed __type __id "create_table_default_permissions";
       external_data_filtering_allow_list =
         Prop.computed __type __id
           "external_data_filtering_allow_list";
       id = Prop.computed __type __id "id";
       read_only_admins =
         Prop.computed __type __id "read_only_admins";
       trusted_resource_owners =
         Prop.computed __type __id "trusted_resource_owners";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_data_lake_settings
        (aws_lakeformation_data_lake_settings ?catalog_id ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id __id =
  let (r : _ Tf_core.resource) = make ?catalog_id ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
