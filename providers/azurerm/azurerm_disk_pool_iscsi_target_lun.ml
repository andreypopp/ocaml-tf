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

type azurerm_disk_pool_iscsi_target_lun = {
  disk_pool_managed_disk_attachment_id : string prop;
  id : string prop option; [@option]
  iscsi_target_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_disk_pool_iscsi_target_lun) -> ()

let yojson_of_azurerm_disk_pool_iscsi_target_lun =
  (function
   | {
       disk_pool_managed_disk_attachment_id =
         v_disk_pool_managed_disk_attachment_id;
       id = v_id;
       iscsi_target_id = v_iscsi_target_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_iscsi_target_id
         in
         ("iscsi_target_id", arg) :: bnds
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
             v_disk_pool_managed_disk_attachment_id
         in
         ("disk_pool_managed_disk_attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_disk_pool_iscsi_target_lun ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_disk_pool_iscsi_target_lun

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_iscsi_target_lun ?id ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name () :
    azurerm_disk_pool_iscsi_target_lun =
  {
    disk_pool_managed_disk_attachment_id;
    id;
    iscsi_target_id;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  disk_pool_managed_disk_attachment_id : string prop;
  id : string prop;
  iscsi_target_id : string prop;
  lun : float prop;
  name : string prop;
}

let make ?id ?timeouts ~disk_pool_managed_disk_attachment_id
    ~iscsi_target_id ~name __id =
  let __type = "azurerm_disk_pool_iscsi_target_lun" in
  let __attrs =
    ({
       tf_name = __id;
       disk_pool_managed_disk_attachment_id =
         Prop.computed __type __id
           "disk_pool_managed_disk_attachment_id";
       id = Prop.computed __type __id "id";
       iscsi_target_id = Prop.computed __type __id "iscsi_target_id";
       lun = Prop.computed __type __id "lun";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_iscsi_target_lun
        (azurerm_disk_pool_iscsi_target_lun ?id ?timeouts
           ~disk_pool_managed_disk_attachment_id ~iscsi_target_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~disk_pool_managed_disk_attachment_id
      ~iscsi_target_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
