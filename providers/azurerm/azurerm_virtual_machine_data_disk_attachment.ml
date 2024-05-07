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

type azurerm_virtual_machine_data_disk_attachment = {
  caching : string prop;
  create_option : string prop option; [@option]
  id : string prop option; [@option]
  lun : float prop;
  managed_disk_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_data_disk_attachment) -> ()

let yojson_of_azurerm_virtual_machine_data_disk_attachment =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       id = v_id;
       lun = v_lun;
       managed_disk_id = v_managed_disk_id;
       virtual_machine_id = v_virtual_machine_id;
       write_accelerator_enabled = v_write_accelerator_enabled;
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
         match v_write_accelerator_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write_accelerator_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
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
         match v_create_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_option", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_data_disk_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_data_disk_attachment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_data_disk_attachment ?create_option ?id
    ?write_accelerator_enabled ?timeouts ~caching ~lun
    ~managed_disk_id ~virtual_machine_id () :
    azurerm_virtual_machine_data_disk_attachment =
  {
    caching;
    create_option;
    id;
    lun;
    managed_disk_id;
    virtual_machine_id;
    write_accelerator_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  caching : string prop;
  create_option : string prop;
  id : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

let make ?create_option ?id ?write_accelerator_enabled ?timeouts
    ~caching ~lun ~managed_disk_id ~virtual_machine_id __id =
  let __type = "azurerm_virtual_machine_data_disk_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       caching = Prop.computed __type __id "caching";
       create_option = Prop.computed __type __id "create_option";
       id = Prop.computed __type __id "id";
       lun = Prop.computed __type __id "lun";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
       write_accelerator_enabled =
         Prop.computed __type __id "write_accelerator_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_data_disk_attachment
        (azurerm_virtual_machine_data_disk_attachment ?create_option
           ?id ?write_accelerator_enabled ?timeouts ~caching ~lun
           ~managed_disk_id ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?create_option ?id ?write_accelerator_enabled
    ?timeouts ~caching ~lun ~managed_disk_id ~virtual_machine_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?create_option ?id ?write_accelerator_enabled ?timeouts
      ~caching ~lun ~managed_disk_id ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
