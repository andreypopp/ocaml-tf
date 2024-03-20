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

type azurerm_site_recovery_hyperv_network_mapping = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_id : string prop;
  source_network_name : string prop;
  source_system_center_virtual_machine_manager_name : string prop;
  target_network_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_site_recovery_hyperv_network_mapping) -> ()

let yojson_of_azurerm_site_recovery_hyperv_network_mapping =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_vault_id = v_recovery_vault_id;
       source_network_name = v_source_network_name;
       source_system_center_virtual_machine_manager_name =
         v_source_system_center_virtual_machine_manager_name;
       target_network_id = v_target_network_id;
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
           yojson_of_prop yojson_of_string v_target_network_id
         in
         ("target_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_system_center_virtual_machine_manager_name
         in
         ("source_system_center_virtual_machine_manager_name", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_network_name
         in
         ("source_network_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_id
         in
         ("recovery_vault_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_site_recovery_hyperv_network_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_hyperv_network_mapping

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_hyperv_network_mapping ?id ?timeouts ~name
    ~recovery_vault_id ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id () :
    azurerm_site_recovery_hyperv_network_mapping =
  {
    id;
    name;
    recovery_vault_id;
    source_network_name;
    source_system_center_virtual_machine_manager_name;
    target_network_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_network_name : string prop;
  source_system_center_virtual_machine_manager_name : string prop;
  target_network_id : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_id ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id __id =
  let __type = "azurerm_site_recovery_hyperv_network_mapping" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       source_network_name =
         Prop.computed __type __id "source_network_name";
       source_system_center_virtual_machine_manager_name =
         Prop.computed __type __id
           "source_system_center_virtual_machine_manager_name";
       target_network_id =
         Prop.computed __type __id "target_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_network_mapping
        (azurerm_site_recovery_hyperv_network_mapping ?id ?timeouts
           ~name ~recovery_vault_id ~source_network_name
           ~source_system_center_virtual_machine_manager_name
           ~target_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id
    ~source_network_name
    ~source_system_center_virtual_machine_manager_name
    ~target_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_id ~source_network_name
      ~source_system_center_virtual_machine_manager_name
      ~target_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
