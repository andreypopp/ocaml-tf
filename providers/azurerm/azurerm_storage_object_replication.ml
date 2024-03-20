(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules = {
  copy_blobs_created_after : string prop option; [@option]
  destination_container_name : string prop;
  filter_out_blobs_with_prefix : string prop list option; [@option]
  source_container_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       copy_blobs_created_after = v_copy_blobs_created_after;
       destination_container_name = v_destination_container_name;
       filter_out_blobs_with_prefix = v_filter_out_blobs_with_prefix;
       source_container_name = v_source_container_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_container_name
         in
         ("source_container_name", arg) :: bnds
       in
       let bnds =
         match v_filter_out_blobs_with_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filter_out_blobs_with_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_destination_container_name
         in
         ("destination_container_name", arg) :: bnds
       in
       let bnds =
         match v_copy_blobs_created_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_blobs_created_after", arg in
             bnd :: bnds
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

type azurerm_storage_object_replication = {
  destination_storage_account_id : string prop;
  id : string prop option; [@option]
  source_storage_account_id : string prop;
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_object_replication) -> ()

let yojson_of_azurerm_storage_object_replication =
  (function
   | {
       destination_storage_account_id =
         v_destination_storage_account_id;
       id = v_id;
       source_storage_account_id = v_source_storage_account_id;
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
         let arg = yojson_of_list yojson_of_rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_storage_account_id
         in
         ("source_storage_account_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_destination_storage_account_id
         in
         ("destination_storage_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_object_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_object_replication

[@@@deriving.end]

let rules ?copy_blobs_created_after ?filter_out_blobs_with_prefix
    ~destination_container_name ~source_container_name () : rules =
  {
    copy_blobs_created_after;
    destination_container_name;
    filter_out_blobs_with_prefix;
    source_container_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_object_replication ?id ?timeouts
    ~destination_storage_account_id ~source_storage_account_id ~rules
    () : azurerm_storage_object_replication =
  {
    destination_storage_account_id;
    id;
    source_storage_account_id;
    rules;
    timeouts;
  }

type t = {
  destination_object_replication_id : string prop;
  destination_storage_account_id : string prop;
  id : string prop;
  source_object_replication_id : string prop;
  source_storage_account_id : string prop;
}

let make ?id ?timeouts ~destination_storage_account_id
    ~source_storage_account_id ~rules __id =
  let __type = "azurerm_storage_object_replication" in
  let __attrs =
    ({
       destination_object_replication_id =
         Prop.computed __type __id
           "destination_object_replication_id";
       destination_storage_account_id =
         Prop.computed __type __id "destination_storage_account_id";
       id = Prop.computed __type __id "id";
       source_object_replication_id =
         Prop.computed __type __id "source_object_replication_id";
       source_storage_account_id =
         Prop.computed __type __id "source_storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_object_replication
        (azurerm_storage_object_replication ?id ?timeouts
           ~destination_storage_account_id ~source_storage_account_id
           ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~destination_storage_account_id
    ~source_storage_account_id ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~destination_storage_account_id
      ~source_storage_account_id ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
