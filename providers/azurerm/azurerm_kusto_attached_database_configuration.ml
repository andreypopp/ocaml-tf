(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sharing = {
  external_tables_to_exclude : string prop list option; [@option]
  external_tables_to_include : string prop list option; [@option]
  materialized_views_to_exclude : string prop list option; [@option]
  materialized_views_to_include : string prop list option; [@option]
  tables_to_exclude : string prop list option; [@option]
  tables_to_include : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sharing) -> ()

let yojson_of_sharing =
  (function
   | {
       external_tables_to_exclude = v_external_tables_to_exclude;
       external_tables_to_include = v_external_tables_to_include;
       materialized_views_to_exclude =
         v_materialized_views_to_exclude;
       materialized_views_to_include =
         v_materialized_views_to_include;
       tables_to_exclude = v_tables_to_exclude;
       tables_to_include = v_tables_to_include;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tables_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tables_to_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tables_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tables_to_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_materialized_views_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "materialized_views_to_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_materialized_views_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "materialized_views_to_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_tables_to_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_tables_to_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_tables_to_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_tables_to_exclude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sharing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sharing

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_kusto_attached_database_configuration = {
  cluster_name : string prop;
  cluster_resource_id : string prop;
  database_name : string prop;
  default_principal_modification_kind : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sharing : sharing list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_attached_database_configuration) -> ()

let yojson_of_azurerm_kusto_attached_database_configuration =
  (function
   | {
       cluster_name = v_cluster_name;
       cluster_resource_id = v_cluster_resource_id;
       database_name = v_database_name;
       default_principal_modification_kind =
         v_default_principal_modification_kind;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sharing = v_sharing;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sharing v_sharing in
         ("sharing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_default_principal_modification_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_principal_modification_kind", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_resource_id
         in
         ("cluster_resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_attached_database_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_attached_database_configuration

[@@@deriving.end]

let sharing ?external_tables_to_exclude ?external_tables_to_include
    ?materialized_views_to_exclude ?materialized_views_to_include
    ?tables_to_exclude ?tables_to_include () : sharing =
  {
    external_tables_to_exclude;
    external_tables_to_include;
    materialized_views_to_exclude;
    materialized_views_to_include;
    tables_to_exclude;
    tables_to_include;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_attached_database_configuration
    ?default_principal_modification_kind ?id ?timeouts ~cluster_name
    ~cluster_resource_id ~database_name ~location ~name
    ~resource_group_name ~sharing () :
    azurerm_kusto_attached_database_configuration =
  {
    cluster_name;
    cluster_resource_id;
    database_name;
    default_principal_modification_kind;
    id;
    location;
    name;
    resource_group_name;
    sharing;
    timeouts;
  }

type t = {
  attached_database_names : string list prop;
  cluster_name : string prop;
  cluster_resource_id : string prop;
  database_name : string prop;
  default_principal_modification_kind : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?default_principal_modification_kind ?id ?timeouts
    ~cluster_name ~cluster_resource_id ~database_name ~location ~name
    ~resource_group_name ~sharing __id =
  let __type = "azurerm_kusto_attached_database_configuration" in
  let __attrs =
    ({
       attached_database_names =
         Prop.computed __type __id "attached_database_names";
       cluster_name = Prop.computed __type __id "cluster_name";
       cluster_resource_id =
         Prop.computed __type __id "cluster_resource_id";
       database_name = Prop.computed __type __id "database_name";
       default_principal_modification_kind =
         Prop.computed __type __id
           "default_principal_modification_kind";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_attached_database_configuration
        (azurerm_kusto_attached_database_configuration
           ?default_principal_modification_kind ?id ?timeouts
           ~cluster_name ~cluster_resource_id ~database_name
           ~location ~name ~resource_group_name ~sharing ());
    attrs = __attrs;
  }

let register ?tf_module ?default_principal_modification_kind ?id
    ?timeouts ~cluster_name ~cluster_resource_id ~database_name
    ~location ~name ~resource_group_name ~sharing __id =
  let (r : _ Tf_core.resource) =
    make ?default_principal_modification_kind ?id ?timeouts
      ~cluster_name ~cluster_resource_id ~database_name ~location
      ~name ~resource_group_name ~sharing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
