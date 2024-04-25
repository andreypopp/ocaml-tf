(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_database_default_permissions = {
  permissions : string prop list option; [@option]
  principal : string prop option; [@option]
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
         match v_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
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
    : create_database_default_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_database_default_permissions

[@@@deriving.end]

type create_table_default_permissions = {
  permissions : string prop list option; [@option]
  principal : string prop option; [@option]
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
         match v_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
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
    : create_table_default_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_table_default_permissions

[@@@deriving.end]

type aws_lakeformation_data_lake_settings = {
  admins : string prop list option; [@option]
  allow_external_data_filtering : bool prop option; [@option]
  authorized_session_tag_value_list : string prop list option;
      [@option]
  catalog_id : string prop option; [@option]
  external_data_filtering_allow_list : string prop list option;
      [@option]
  id : string prop option; [@option]
  read_only_admins : string prop list option; [@option]
  trusted_resource_owners : string prop list option; [@option]
  create_database_default_permissions :
    create_database_default_permissions list;
  create_table_default_permissions :
    create_table_default_permissions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_data_lake_settings) -> ()

let yojson_of_aws_lakeformation_data_lake_settings =
  (function
   | {
       admins = v_admins;
       allow_external_data_filtering =
         v_allow_external_data_filtering;
       authorized_session_tag_value_list =
         v_authorized_session_tag_value_list;
       catalog_id = v_catalog_id;
       external_data_filtering_allow_list =
         v_external_data_filtering_allow_list;
       id = v_id;
       read_only_admins = v_read_only_admins;
       trusted_resource_owners = v_trusted_resource_owners;
       create_database_default_permissions =
         v_create_database_default_permissions;
       create_table_default_permissions =
         v_create_table_default_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_create_table_default_permissions
             v_create_table_default_permissions
         in
         ("create_table_default_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_create_database_default_permissions
             v_create_database_default_permissions
         in
         ("create_database_default_permissions", arg) :: bnds
       in
       let bnds =
         match v_trusted_resource_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_resource_owners", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "read_only_admins", arg in
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
         match v_external_data_filtering_allow_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_data_filtering_allow_list", arg in
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
       let bnds =
         match v_authorized_session_tag_value_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorized_session_tag_value_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_external_data_filtering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_external_data_filtering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admins", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_data_lake_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_data_lake_settings

[@@@deriving.end]

let create_database_default_permissions ?permissions ?principal () :
    create_database_default_permissions =
  { permissions; principal }

let create_table_default_permissions ?permissions ?principal () :
    create_table_default_permissions =
  { permissions; principal }

let aws_lakeformation_data_lake_settings ?admins
    ?allow_external_data_filtering ?authorized_session_tag_value_list
    ?catalog_id ?external_data_filtering_allow_list ?id
    ?read_only_admins ?trusted_resource_owners
    ?(create_database_default_permissions = [])
    ?(create_table_default_permissions = []) () :
    aws_lakeformation_data_lake_settings =
  {
    admins;
    allow_external_data_filtering;
    authorized_session_tag_value_list;
    catalog_id;
    external_data_filtering_allow_list;
    id;
    read_only_admins;
    trusted_resource_owners;
    create_database_default_permissions;
    create_table_default_permissions;
  }

type t = {
  admins : string list prop;
  allow_external_data_filtering : bool prop;
  authorized_session_tag_value_list : string list prop;
  catalog_id : string prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

let make ?admins ?allow_external_data_filtering
    ?authorized_session_tag_value_list ?catalog_id
    ?external_data_filtering_allow_list ?id ?read_only_admins
    ?trusted_resource_owners
    ?(create_database_default_permissions = [])
    ?(create_table_default_permissions = []) __id =
  let __type = "aws_lakeformation_data_lake_settings" in
  let __attrs =
    ({
       admins = Prop.computed __type __id "admins";
       allow_external_data_filtering =
         Prop.computed __type __id "allow_external_data_filtering";
       authorized_session_tag_value_list =
         Prop.computed __type __id
           "authorized_session_tag_value_list";
       catalog_id = Prop.computed __type __id "catalog_id";
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
        (aws_lakeformation_data_lake_settings ?admins
           ?allow_external_data_filtering
           ?authorized_session_tag_value_list ?catalog_id
           ?external_data_filtering_allow_list ?id ?read_only_admins
           ?trusted_resource_owners
           ~create_database_default_permissions
           ~create_table_default_permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?admins ?allow_external_data_filtering
    ?authorized_session_tag_value_list ?catalog_id
    ?external_data_filtering_allow_list ?id ?read_only_admins
    ?trusted_resource_owners
    ?(create_database_default_permissions = [])
    ?(create_table_default_permissions = []) __id =
  let (r : _ Tf_core.resource) =
    make ?admins ?allow_external_data_filtering
      ?authorized_session_tag_value_list ?catalog_id
      ?external_data_filtering_allow_list ?id ?read_only_admins
      ?trusted_resource_owners ~create_database_default_permissions
      ~create_table_default_permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
