(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type protected_settings_from_key_vault = {
  secret_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protected_settings_from_key_vault) -> ()

let yojson_of_protected_settings_from_key_vault =
  (function
   | {
       secret_url = v_secret_url;
       source_vault_id = v_source_vault_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_url in
         ("secret_url", arg) :: bnds
       in
       `Assoc bnds
    : protected_settings_from_key_vault ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protected_settings_from_key_vault

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

type azurerm_virtual_machine_scale_set_extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
  automatic_upgrade_enabled : bool prop option; [@option]
  failure_suppression_enabled : bool prop option; [@option]
  force_update_tag : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  protected_settings : string prop option; [@option]
  provision_after_extensions : string prop list option; [@option]
  publisher : string prop;
  settings : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_handler_version : string prop;
  virtual_machine_scale_set_id : string prop;
  protected_settings_from_key_vault :
    protected_settings_from_key_vault list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_scale_set_extension) -> ()

let yojson_of_azurerm_virtual_machine_scale_set_extension =
  (function
   | {
       auto_upgrade_minor_version = v_auto_upgrade_minor_version;
       automatic_upgrade_enabled = v_automatic_upgrade_enabled;
       failure_suppression_enabled = v_failure_suppression_enabled;
       force_update_tag = v_force_update_tag;
       id = v_id;
       name = v_name;
       protected_settings = v_protected_settings;
       provision_after_extensions = v_provision_after_extensions;
       publisher = v_publisher;
       settings = v_settings;
       type_ = v_type_;
       type_handler_version = v_type_handler_version;
       virtual_machine_scale_set_id = v_virtual_machine_scale_set_id;
       protected_settings_from_key_vault =
         v_protected_settings_from_key_vault;
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
         if [] = v_protected_settings_from_key_vault then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_protected_settings_from_key_vault)
               v_protected_settings_from_key_vault
           in
           let bnd = "protected_settings_from_key_vault", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_machine_scale_set_id
         in
         ("virtual_machine_scale_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_type_handler_version
         in
         ("type_handler_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         match v_provision_after_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "provision_after_extensions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protected_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protected_settings", arg in
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
         match v_force_update_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_update_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_suppression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failure_suppression_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_upgrade_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_upgrade_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_upgrade_minor_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade_minor_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_scale_set_extension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_scale_set_extension

[@@@deriving.end]

let protected_settings_from_key_vault ~secret_url ~source_vault_id ()
    : protected_settings_from_key_vault =
  { secret_url; source_vault_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_scale_set_extension
    ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?failure_suppression_enabled ?force_update_tag ?id
    ?protected_settings ?provision_after_extensions ?settings
    ?(protected_settings_from_key_vault = []) ?timeouts ~name
    ~publisher ~type_ ~type_handler_version
    ~virtual_machine_scale_set_id () :
    azurerm_virtual_machine_scale_set_extension =
  {
    auto_upgrade_minor_version;
    automatic_upgrade_enabled;
    failure_suppression_enabled;
    force_update_tag;
    id;
    name;
    protected_settings;
    provision_after_extensions;
    publisher;
    settings;
    type_;
    type_handler_version;
    virtual_machine_scale_set_id;
    protected_settings_from_key_vault;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_upgrade_minor_version : bool prop;
  automatic_upgrade_enabled : bool prop;
  failure_suppression_enabled : bool prop;
  force_update_tag : string prop;
  id : string prop;
  name : string prop;
  protected_settings : string prop;
  provision_after_extensions : string list prop;
  publisher : string prop;
  settings : string prop;
  type_ : string prop;
  type_handler_version : string prop;
  virtual_machine_scale_set_id : string prop;
}

let make ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?failure_suppression_enabled ?force_update_tag ?id
    ?protected_settings ?provision_after_extensions ?settings
    ?(protected_settings_from_key_vault = []) ?timeouts ~name
    ~publisher ~type_ ~type_handler_version
    ~virtual_machine_scale_set_id __id =
  let __type = "azurerm_virtual_machine_scale_set_extension" in
  let __attrs =
    ({
       tf_name = __id;
       auto_upgrade_minor_version =
         Prop.computed __type __id "auto_upgrade_minor_version";
       automatic_upgrade_enabled =
         Prop.computed __type __id "automatic_upgrade_enabled";
       failure_suppression_enabled =
         Prop.computed __type __id "failure_suppression_enabled";
       force_update_tag =
         Prop.computed __type __id "force_update_tag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protected_settings =
         Prop.computed __type __id "protected_settings";
       provision_after_extensions =
         Prop.computed __type __id "provision_after_extensions";
       publisher = Prop.computed __type __id "publisher";
       settings = Prop.computed __type __id "settings";
       type_ = Prop.computed __type __id "type";
       type_handler_version =
         Prop.computed __type __id "type_handler_version";
       virtual_machine_scale_set_id =
         Prop.computed __type __id "virtual_machine_scale_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_scale_set_extension
        (azurerm_virtual_machine_scale_set_extension
           ?auto_upgrade_minor_version ?automatic_upgrade_enabled
           ?failure_suppression_enabled ?force_update_tag ?id
           ?protected_settings ?provision_after_extensions ?settings
           ~protected_settings_from_key_vault ?timeouts ~name
           ~publisher ~type_ ~type_handler_version
           ~virtual_machine_scale_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_upgrade_minor_version
    ?automatic_upgrade_enabled ?failure_suppression_enabled
    ?force_update_tag ?id ?protected_settings
    ?provision_after_extensions ?settings
    ?(protected_settings_from_key_vault = []) ?timeouts ~name
    ~publisher ~type_ ~type_handler_version
    ~virtual_machine_scale_set_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_upgrade_minor_version ?automatic_upgrade_enabled
      ?failure_suppression_enabled ?force_update_tag ?id
      ?protected_settings ?provision_after_extensions ?settings
      ~protected_settings_from_key_vault ?timeouts ~name ~publisher
      ~type_ ~type_handler_version ~virtual_machine_scale_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
