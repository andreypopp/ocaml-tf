(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__filter = {
  blob_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  exclude_prefixes : string prop list option; [@option]
  include_blob_versions : bool prop option; [@option]
  include_deleted : bool prop option; [@option]
  include_snapshots : bool prop option; [@option]
  prefix_match : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__filter) -> ()

let yojson_of_rules__filter =
  (function
   | {
       blob_types = v_blob_types;
       exclude_prefixes = v_exclude_prefixes;
       include_blob_versions = v_include_blob_versions;
       include_deleted = v_include_deleted;
       include_snapshots = v_include_snapshots;
       prefix_match = v_prefix_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_snapshots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_snapshots", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_deleted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_deleted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_blob_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_blob_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_blob_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_blob_types
           in
           let bnd = "blob_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__filter

[@@@deriving.end]

type rules = {
  format : string prop;
  name : string prop;
  schedule : string prop;
  schema_fields : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  scope : string prop;
  storage_container_name : string prop;
  filter : rules__filter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       format = v_format;
       name = v_name;
       schedule = v_schedule;
       schema_fields = v_schema_fields;
       scope = v_scope;
       storage_container_name = v_storage_container_name;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__filter) v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_name
         in
         ("storage_container_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         if [] = v_schema_fields then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_schema_fields
           in
           let bnd = "schema_fields", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

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

type azurerm_storage_blob_inventory_policy = {
  id : string prop option; [@option]
  storage_account_id : string prop;
  rules : rules list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_blob_inventory_policy) -> ()

let yojson_of_azurerm_storage_blob_inventory_policy =
  (function
   | {
       id = v_id;
       storage_account_id = v_storage_account_id;
       rules = v_rules;
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
         if [] = v_rules then bnds
         else
           let arg = (yojson_of_list yojson_of_rules) v_rules in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_blob_inventory_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_blob_inventory_policy

[@@@deriving.end]

let rules__filter ?exclude_prefixes ?include_blob_versions
    ?include_deleted ?include_snapshots ?prefix_match ~blob_types ()
    : rules__filter =
  {
    blob_types;
    exclude_prefixes;
    include_blob_versions;
    include_deleted;
    include_snapshots;
    prefix_match;
  }

let rules ?(filter = []) ~format ~name ~schedule ~schema_fields
    ~scope ~storage_container_name () : rules =
  {
    format;
    name;
    schedule;
    schema_fields;
    scope;
    storage_container_name;
    filter;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_blob_inventory_policy ?id ?timeouts
    ~storage_account_id ~rules () :
    azurerm_storage_blob_inventory_policy =
  { id; storage_account_id; rules; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  storage_account_id : string prop;
}

let make ?id ?timeouts ~storage_account_id ~rules __id =
  let __type = "azurerm_storage_blob_inventory_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_blob_inventory_policy
        (azurerm_storage_blob_inventory_policy ?id ?timeouts
           ~storage_account_id ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~storage_account_id ~rules __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~storage_account_id ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
