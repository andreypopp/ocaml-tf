(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_disk_pool_iscsi_target = {
  acl_mode : string prop;
  disks_pool_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  target_iqn : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_disk_pool_iscsi_target) -> ()

let yojson_of_azurerm_disk_pool_iscsi_target =
  (function
   | {
       acl_mode = v_acl_mode;
       disks_pool_id = v_disks_pool_id;
       id = v_id;
       name = v_name;
       target_iqn = v_target_iqn;
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
         match v_target_iqn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_iqn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_disks_pool_id in
         ("disks_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_acl_mode in
         ("acl_mode", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_disk_pool_iscsi_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_disk_pool_iscsi_target

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
    ~acl_mode ~disks_pool_id ~name () :
    azurerm_disk_pool_iscsi_target =
  { acl_mode; disks_pool_id; id; name; target_iqn; timeouts }

type t = {
  tf_name : string;
  acl_mode : string prop;
  disks_pool_id : string prop;
  endpoints : string list prop;
  id : string prop;
  name : string prop;
  port : float prop;
  target_iqn : string prop;
}

let make ?id ?target_iqn ?timeouts ~acl_mode ~disks_pool_id ~name
    __id =
  let __type = "azurerm_disk_pool_iscsi_target" in
  let __attrs =
    ({
       tf_name = __id;
       acl_mode = Prop.computed __type __id "acl_mode";
       disks_pool_id = Prop.computed __type __id "disks_pool_id";
       endpoints = Prop.computed __type __id "endpoints";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       target_iqn = Prop.computed __type __id "target_iqn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_iscsi_target
        (azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
           ~acl_mode ~disks_pool_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?target_iqn ?timeouts ~acl_mode
    ~disks_pool_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?target_iqn ?timeouts ~acl_mode ~disks_pool_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
