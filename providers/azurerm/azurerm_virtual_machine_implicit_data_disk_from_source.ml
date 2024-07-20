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

type azurerm_virtual_machine_implicit_data_disk_from_source = {
  caching : string prop option; [@option]
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop option; [@option]
  lun : float prop;
  name : string prop;
  source_resource_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_virtual_machine_implicit_data_disk_from_source) ->
  ()

let yojson_of_azurerm_virtual_machine_implicit_data_disk_from_source
    =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       disk_size_gb = v_disk_size_gb;
       id = v_id;
       lun = v_lun;
       name = v_name;
       source_resource_id = v_source_resource_id;
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
           yojson_of_prop yojson_of_string v_source_resource_id
         in
         ("source_resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_option in
         ("create_option", arg) :: bnds
       in
       let bnds =
         match v_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caching", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_implicit_data_disk_from_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_virtual_machine_implicit_data_disk_from_source

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_implicit_data_disk_from_source ?caching
    ?id ?write_accelerator_enabled ?timeouts ~create_option
    ~disk_size_gb ~lun ~name ~source_resource_id ~virtual_machine_id
    () : azurerm_virtual_machine_implicit_data_disk_from_source =
  {
    caching;
    create_option;
    disk_size_gb;
    id;
    lun;
    name;
    source_resource_id;
    virtual_machine_id;
    write_accelerator_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  caching : string prop;
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop;
  lun : float prop;
  name : string prop;
  source_resource_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

let make ?caching ?id ?write_accelerator_enabled ?timeouts
    ~create_option ~disk_size_gb ~lun ~name ~source_resource_id
    ~virtual_machine_id __id =
  let __type =
    "azurerm_virtual_machine_implicit_data_disk_from_source"
  in
  let __attrs =
    ({
       tf_name = __id;
       caching = Prop.computed __type __id "caching";
       create_option = Prop.computed __type __id "create_option";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       id = Prop.computed __type __id "id";
       lun = Prop.computed __type __id "lun";
       name = Prop.computed __type __id "name";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
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
      yojson_of_azurerm_virtual_machine_implicit_data_disk_from_source
        (azurerm_virtual_machine_implicit_data_disk_from_source
           ?caching ?id ?write_accelerator_enabled ?timeouts
           ~create_option ~disk_size_gb ~lun ~name
           ~source_resource_id ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?caching ?id ?write_accelerator_enabled
    ?timeouts ~create_option ~disk_size_gb ~lun ~name
    ~source_resource_id ~virtual_machine_id __id =
  let (r : _ Tf_core.resource) =
    make ?caching ?id ?write_accelerator_enabled ?timeouts
      ~create_option ~disk_size_gb ~lun ~name ~source_resource_id
      ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
