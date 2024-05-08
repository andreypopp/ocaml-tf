(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_shutdown = {
  disconnect_delay : string prop option; [@option]
  idle_delay : string prop option; [@option]
  no_connect_delay : string prop option; [@option]
  shutdown_on_idle : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_shutdown) -> ()

let yojson_of_auto_shutdown =
  (function
   | {
       disconnect_delay = v_disconnect_delay;
       idle_delay = v_idle_delay;
       no_connect_delay = v_no_connect_delay;
       shutdown_on_idle = v_shutdown_on_idle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_shutdown_on_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shutdown_on_idle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_connect_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "no_connect_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idle_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disconnect_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disconnect_delay", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_shutdown -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_shutdown

[@@@deriving.end]

type connection_setting = {
  client_rdp_access : string prop option; [@option]
  client_ssh_access : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_setting) -> ()

let yojson_of_connection_setting =
  (function
   | {
       client_rdp_access = v_client_rdp_access;
       client_ssh_access = v_client_ssh_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_ssh_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_ssh_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_rdp_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_rdp_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connection_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_setting

[@@@deriving.end]

type network = { subnet_id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

[@@@deriving.end]

type roster = {
  active_directory_group_id : string prop option; [@option]
  lms_instance : string prop option; [@option]
  lti_client_id : string prop option; [@option]
  lti_context_id : string prop option; [@option]
  lti_roster_endpoint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roster) -> ()

let yojson_of_roster =
  (function
   | {
       active_directory_group_id = v_active_directory_group_id;
       lms_instance = v_lms_instance;
       lti_client_id = v_lti_client_id;
       lti_context_id = v_lti_context_id;
       lti_roster_endpoint = v_lti_roster_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lti_roster_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lti_roster_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lti_context_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lti_context_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lti_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lti_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lms_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lms_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : roster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roster

[@@@deriving.end]

type security = { open_access_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : security) -> ()

let yojson_of_security =
  (function
   | { open_access_enabled = v_open_access_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_open_access_enabled
         in
         ("open_access_enabled", arg) :: bnds
       in
       `Assoc bnds
    : security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security

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

type virtual_machine__admin_user = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine__admin_user) -> ()

let yojson_of_virtual_machine__admin_user =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine__admin_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__admin_user

[@@@deriving.end]

type virtual_machine__image_reference = {
  id : string prop option; [@option]
  offer : string prop option; [@option]
  publisher : string prop option; [@option]
  sku : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine__image_reference) -> ()

let yojson_of_virtual_machine__image_reference =
  (function
   | {
       id = v_id;
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publisher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "publisher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_offer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "offer", arg in
             bnd :: bnds
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
    : virtual_machine__image_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__image_reference

[@@@deriving.end]

type virtual_machine__non_admin_user = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine__non_admin_user) -> ()

let yojson_of_virtual_machine__non_admin_user =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine__non_admin_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__non_admin_user

[@@@deriving.end]

type virtual_machine__sku = {
  capacity : float prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine__sku) -> ()

let yojson_of_virtual_machine__sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine__sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__sku

[@@@deriving.end]

type virtual_machine = {
  additional_capability_gpu_drivers_installed : bool prop option;
      [@option]
  create_option : string prop option; [@option]
  shared_password_enabled : bool prop option; [@option]
  usage_quota : string prop option; [@option]
  admin_user : virtual_machine__admin_user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image_reference : virtual_machine__image_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  non_admin_user : virtual_machine__non_admin_user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sku : virtual_machine__sku list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine) -> ()

let yojson_of_virtual_machine =
  (function
   | {
       additional_capability_gpu_drivers_installed =
         v_additional_capability_gpu_drivers_installed;
       create_option = v_create_option;
       shared_password_enabled = v_shared_password_enabled;
       usage_quota = v_usage_quota;
       admin_user = v_admin_user;
       image_reference = v_image_reference;
       non_admin_user = v_non_admin_user;
       sku = v_sku;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sku then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_machine__sku) v_sku
           in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_non_admin_user then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine__non_admin_user)
               v_non_admin_user
           in
           let bnd = "non_admin_user", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine__image_reference)
               v_image_reference
           in
           let bnd = "image_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_user then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_machine__admin_user)
               v_admin_user
           in
           let bnd = "admin_user", arg in
           bnd :: bnds
       in
       let bnds =
         match v_usage_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_quota", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_password_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shared_password_enabled", arg in
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
         match v_additional_capability_gpu_drivers_installed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "additional_capability_gpu_drivers_installed", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine

[@@@deriving.end]

type azurerm_lab_service_lab = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  lab_plan_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  title : string prop;
  auto_shutdown : auto_shutdown list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connection_setting : connection_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network : network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  roster : roster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security : security list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  virtual_machine : virtual_machine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lab_service_lab) -> ()

let yojson_of_azurerm_lab_service_lab =
  (function
   | {
       description = v_description;
       id = v_id;
       lab_plan_id = v_lab_plan_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       title = v_title;
       auto_shutdown = v_auto_shutdown;
       connection_setting = v_connection_setting;
       network = v_network;
       roster = v_roster;
       security = v_security;
       timeouts = v_timeouts;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_machine)
               v_virtual_machine
           in
           let bnd = "virtual_machine", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security) v_security
           in
           let bnd = "security", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_roster then bnds
         else
           let arg = (yojson_of_list yojson_of_roster) v_roster in
           let bnd = "roster", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network then bnds
         else
           let arg = (yojson_of_list yojson_of_network) v_network in
           let bnd = "network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connection_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connection_setting)
               v_connection_setting
           in
           let bnd = "connection_setting", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_shutdown then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_shutdown) v_auto_shutdown
           in
           let bnd = "auto_shutdown", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         match v_lab_plan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lab_plan_id", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lab_service_lab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lab_service_lab

[@@@deriving.end]

let auto_shutdown ?disconnect_delay ?idle_delay ?no_connect_delay
    ?shutdown_on_idle () : auto_shutdown =
  {
    disconnect_delay;
    idle_delay;
    no_connect_delay;
    shutdown_on_idle;
  }

let connection_setting ?client_rdp_access ?client_ssh_access () :
    connection_setting =
  { client_rdp_access; client_ssh_access }

let network ?subnet_id () : network = { subnet_id }

let roster ?active_directory_group_id ?lms_instance ?lti_client_id
    ?lti_context_id ?lti_roster_endpoint () : roster =
  {
    active_directory_group_id;
    lms_instance;
    lti_client_id;
    lti_context_id;
    lti_roster_endpoint;
  }

let security ~open_access_enabled () : security =
  { open_access_enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_machine__admin_user ~password ~username () :
    virtual_machine__admin_user =
  { password; username }

let virtual_machine__image_reference ?id ?offer ?publisher ?sku
    ?version () : virtual_machine__image_reference =
  { id; offer; publisher; sku; version }

let virtual_machine__non_admin_user ~password ~username () :
    virtual_machine__non_admin_user =
  { password; username }

let virtual_machine__sku ~capacity ~name () : virtual_machine__sku =
  { capacity; name }

let virtual_machine ?additional_capability_gpu_drivers_installed
    ?create_option ?shared_password_enabled ?usage_quota
    ?(non_admin_user = []) ~admin_user ~image_reference ~sku () :
    virtual_machine =
  {
    additional_capability_gpu_drivers_installed;
    create_option;
    shared_password_enabled;
    usage_quota;
    admin_user;
    image_reference;
    non_admin_user;
    sku;
  }

let azurerm_lab_service_lab ?description ?id ?lab_plan_id ?tags
    ?(auto_shutdown = []) ?(network = []) ?(roster = []) ?timeouts
    ~location ~name ~resource_group_name ~title ~connection_setting
    ~security ~virtual_machine () : azurerm_lab_service_lab =
  {
    description;
    id;
    lab_plan_id;
    location;
    name;
    resource_group_name;
    tags;
    title;
    auto_shutdown;
    connection_setting;
    network;
    roster;
    security;
    timeouts;
    virtual_machine;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  lab_plan_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title : string prop;
}

let make ?description ?id ?lab_plan_id ?tags ?(auto_shutdown = [])
    ?(network = []) ?(roster = []) ?timeouts ~location ~name
    ~resource_group_name ~title ~connection_setting ~security
    ~virtual_machine __id =
  let __type = "azurerm_lab_service_lab" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lab_plan_id = Prop.computed __type __id "lab_plan_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_lab
        (azurerm_lab_service_lab ?description ?id ?lab_plan_id ?tags
           ~auto_shutdown ~network ~roster ?timeouts ~location ~name
           ~resource_group_name ~title ~connection_setting ~security
           ~virtual_machine ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?lab_plan_id ?tags
    ?(auto_shutdown = []) ?(network = []) ?(roster = []) ?timeouts
    ~location ~name ~resource_group_name ~title ~connection_setting
    ~security ~virtual_machine __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?lab_plan_id ?tags ~auto_shutdown ~network
      ~roster ?timeouts ~location ~name ~resource_group_name ~title
      ~connection_setting ~security ~virtual_machine __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
