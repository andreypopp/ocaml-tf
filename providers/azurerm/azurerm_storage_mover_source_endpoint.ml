(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_storage_mover_source_endpoint = {
  description : string prop option; [@option]
  export : string prop option; [@option]
  host : string prop;
  id : string prop option; [@option]
  name : string prop;
  nfs_version : string prop option; [@option]
  storage_mover_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_mover_source_endpoint) -> ()

let yojson_of_azurerm_storage_mover_source_endpoint =
  (function
   | {
       description = v_description;
       export = v_export;
       host = v_host;
       id = v_id;
       name = v_name;
       nfs_version = v_nfs_version;
       storage_mover_id = v_storage_mover_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_mover_id
         in
         ("storage_mover_id", arg) :: bnds
       in
       let bnds =
         match v_nfs_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nfs_version", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_export with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "export", arg in
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
       `Assoc bnds
    : azurerm_storage_mover_source_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_mover_source_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_source_endpoint ?description ?export ?id
    ?nfs_version ?timeouts ~host ~name ~storage_mover_id () :
    azurerm_storage_mover_source_endpoint =
  {
    description;
    export;
    host;
    id;
    name;
    nfs_version;
    storage_mover_id;
    timeouts;
  }

type t = {
  description : string prop;
  export : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  nfs_version : string prop;
  storage_mover_id : string prop;
}

let make ?description ?export ?id ?nfs_version ?timeouts ~host ~name
    ~storage_mover_id __id =
  let __type = "azurerm_storage_mover_source_endpoint" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       export = Prop.computed __type __id "export";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       nfs_version = Prop.computed __type __id "nfs_version";
       storage_mover_id =
         Prop.computed __type __id "storage_mover_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_mover_source_endpoint
        (azurerm_storage_mover_source_endpoint ?description ?export
           ?id ?nfs_version ?timeouts ~host ~name ~storage_mover_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?export ?id ?nfs_version
    ?timeouts ~host ~name ~storage_mover_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?export ?id ?nfs_version ?timeouts ~host ~name
      ~storage_mover_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
