(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_capabilities = {
  ultra_ssd_enabled : bool prop option; [@option]
      (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** additional_capabilities *)

type additional_unattend_content = {
  content : string prop;  (** content *)
  setting : string prop;  (** setting *)
}
[@@deriving yojson_of]
(** additional_unattend_content *)

type boot_diagnostics = {
  storage_account_uri : string prop option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** boot_diagnostics *)

type gallery_application = {
  automatic_upgrade_enabled : bool prop option; [@option]
      (** automatic_upgrade_enabled *)
  configuration_blob_uri : string prop option; [@option]
      (** configuration_blob_uri *)
  order : float prop option; [@option]  (** order *)
  tag : string prop option; [@option]  (** tag *)
  treat_failure_as_deployment_failure_enabled : bool prop option;
      [@option]
      (** treat_failure_as_deployment_failure_enabled *)
  version_id : string prop;  (** version_id *)
}
[@@deriving yojson_of]
(** gallery_application *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type os_disk__diff_disk_settings = {
  option_ : string prop; [@key "option"]  (** option *)
  placement : string prop option; [@option]  (** placement *)
}
[@@deriving yojson_of]
(** os_disk__diff_disk_settings *)

type os_disk = {
  caching : string prop;  (** caching *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  name : string prop option; [@option]  (** name *)
  secure_vm_disk_encryption_set_id : string prop option; [@option]
      (** secure_vm_disk_encryption_set_id *)
  security_encryption_type : string prop option; [@option]
      (** security_encryption_type *)
  storage_account_type : string prop;  (** storage_account_type *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings : os_disk__diff_disk_settings list;
}
[@@deriving yojson_of]
(** os_disk *)

type os_image_notification = {
  timeout : string prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** os_image_notification *)

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** plan *)

type secret__certificate = {
  store : string prop;  (** store *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** secret__certificate *)

type secret = {
  key_vault_id : string prop;  (** key_vault_id *)
  certificate : secret__certificate list;
}
[@@deriving yojson_of]
(** secret *)

type source_image_reference = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** source_image_reference *)

type termination_notification = {
  enabled : bool prop;  (** enabled *)
  timeout : string prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** termination_notification *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type winrm_listener = {
  certificate_url : string prop option; [@option]
      (** certificate_url *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** winrm_listener *)

type azurerm_windows_virtual_machine = {
  admin_password : string prop;  (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  allow_extension_operations : bool prop option; [@option]
      (** allow_extension_operations *)
  availability_set_id : string prop option; [@option]
      (** availability_set_id *)
  bypass_platform_safety_checks_on_user_schedule_enabled :
    bool prop option;
      [@option]
      (** bypass_platform_safety_checks_on_user_schedule_enabled *)
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  computer_name : string prop option; [@option]  (** computer_name *)
  custom_data : string prop option; [@option]  (** custom_data *)
  dedicated_host_group_id : string prop option; [@option]
      (** dedicated_host_group_id *)
  dedicated_host_id : string prop option; [@option]
      (** dedicated_host_id *)
  disk_controller_type : string prop option; [@option]
      (** disk_controller_type *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_automatic_updates : bool prop option; [@option]
      (** enable_automatic_updates *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  extensions_time_budget : string prop option; [@option]
      (** extensions_time_budget *)
  hotpatching_enabled : bool prop option; [@option]
      (** hotpatching_enabled *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_bid_price : float prop option; [@option]  (** max_bid_price *)
  name : string prop;  (** name *)
  network_interface_ids : string prop list;
      (** network_interface_ids *)
  patch_assessment_mode : string prop option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string prop option; [@option]  (** patch_mode *)
  platform_fault_domain : float prop option; [@option]
      (** platform_fault_domain *)
  priority : string prop option; [@option]  (** priority *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  reboot_setting : string prop option; [@option]
      (** reboot_setting *)
  resource_group_name : string prop;  (** resource_group_name *)
  secure_boot_enabled : bool prop option; [@option]
      (** secure_boot_enabled *)
  size : string prop;  (** size *)
  source_image_id : string prop option; [@option]
      (** source_image_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone : string prop option; [@option]  (** timezone *)
  user_data : string prop option; [@option]  (** user_data *)
  virtual_machine_scale_set_id : string prop option; [@option]
      (** virtual_machine_scale_set_id *)
  vm_agent_platform_updates_enabled : bool prop option; [@option]
      (** vm_agent_platform_updates_enabled *)
  vtpm_enabled : bool prop option; [@option]  (** vtpm_enabled *)
  zone : string prop option; [@option]  (** zone *)
  additional_capabilities : additional_capabilities list;
  additional_unattend_content : additional_unattend_content list;
  boot_diagnostics : boot_diagnostics list;
  gallery_application : gallery_application list;
  identity : identity list;
  os_disk : os_disk list;
  os_image_notification : os_image_notification list;
  plan : plan list;
  secret : secret list;
  source_image_reference : source_image_reference list;
  termination_notification : termination_notification list;
  timeouts : timeouts option;
  winrm_listener : winrm_listener list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine *)

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let additional_unattend_content ~content ~setting () :
    additional_unattend_content =
  { content; setting }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let gallery_application ?automatic_upgrade_enabled
    ?configuration_blob_uri ?order ?tag
    ?treat_failure_as_deployment_failure_enabled ~version_id () :
    gallery_application =
  {
    automatic_upgrade_enabled;
    configuration_blob_uri;
    order;
    tag;
    treat_failure_as_deployment_failure_enabled;
    version_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let os_disk__diff_disk_settings ?placement ~option_ () :
    os_disk__diff_disk_settings =
  { option_; placement }

let os_disk ?disk_encryption_set_id ?disk_size_gb ?name
    ?secure_vm_disk_encryption_set_id ?security_encryption_type
    ?write_accelerator_enabled ~caching ~storage_account_type
    ~diff_disk_settings () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    name;
    secure_vm_disk_encryption_set_id;
    security_encryption_type;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let os_image_notification ?timeout () : os_image_notification =
  { timeout }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let secret__certificate ~store ~url () : secret__certificate =
  { store; url }

let secret ~key_vault_id ~certificate () : secret =
  { key_vault_id; certificate }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let winrm_listener ?certificate_url ~protocol () : winrm_listener =
  { certificate_url; protocol }

let azurerm_windows_virtual_machine ?allow_extension_operations
    ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?timeouts ~admin_password ~admin_username
    ~location ~name ~network_interface_ids ~resource_group_name ~size
    ~additional_capabilities ~additional_unattend_content
    ~boot_diagnostics ~gallery_application ~identity ~os_disk
    ~os_image_notification ~plan ~secret ~source_image_reference
    ~termination_notification ~winrm_listener () :
    azurerm_windows_virtual_machine =
  {
    admin_password;
    admin_username;
    allow_extension_operations;
    availability_set_id;
    bypass_platform_safety_checks_on_user_schedule_enabled;
    capacity_reservation_group_id;
    computer_name;
    custom_data;
    dedicated_host_group_id;
    dedicated_host_id;
    disk_controller_type;
    edge_zone;
    enable_automatic_updates;
    encryption_at_host_enabled;
    eviction_policy;
    extensions_time_budget;
    hotpatching_enabled;
    id;
    license_type;
    location;
    max_bid_price;
    name;
    network_interface_ids;
    patch_assessment_mode;
    patch_mode;
    platform_fault_domain;
    priority;
    provision_vm_agent;
    proximity_placement_group_id;
    reboot_setting;
    resource_group_name;
    secure_boot_enabled;
    size;
    source_image_id;
    tags;
    timezone;
    user_data;
    virtual_machine_scale_set_id;
    vm_agent_platform_updates_enabled;
    vtpm_enabled;
    zone;
    additional_capabilities;
    additional_unattend_content;
    boot_diagnostics;
    gallery_application;
    identity;
    os_disk;
    os_image_notification;
    plan;
    secret;
    source_image_reference;
    termination_notification;
    timeouts;
    winrm_listener;
  }

type t = {
  admin_password : string prop;
  admin_username : string prop;
  allow_extension_operations : bool prop;
  availability_set_id : string prop;
  bypass_platform_safety_checks_on_user_schedule_enabled : bool prop;
  capacity_reservation_group_id : string prop;
  computer_name : string prop;
  custom_data : string prop;
  dedicated_host_group_id : string prop;
  dedicated_host_id : string prop;
  disk_controller_type : string prop;
  edge_zone : string prop;
  enable_automatic_updates : bool prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extensions_time_budget : string prop;
  hotpatching_enabled : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  network_interface_ids : string list prop;
  patch_assessment_mode : string prop;
  patch_mode : string prop;
  platform_fault_domain : float prop;
  priority : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  public_ip_address : string prop;
  public_ip_addresses : string list prop;
  reboot_setting : string prop;
  resource_group_name : string prop;
  secure_boot_enabled : bool prop;
  size : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  user_data : string prop;
  virtual_machine_id : string prop;
  virtual_machine_scale_set_id : string prop;
  vm_agent_platform_updates_enabled : bool prop;
  vtpm_enabled : bool prop;
  zone : string prop;
}

let make ?allow_extension_operations ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?timeouts ~admin_password ~admin_username
    ~location ~name ~network_interface_ids ~resource_group_name ~size
    ~additional_capabilities ~additional_unattend_content
    ~boot_diagnostics ~gallery_application ~identity ~os_disk
    ~os_image_notification ~plan ~secret ~source_image_reference
    ~termination_notification ~winrm_listener __id =
  let __type = "azurerm_windows_virtual_machine" in
  let __attrs =
    ({
       admin_password = Prop.computed __type __id "admin_password";
       admin_username = Prop.computed __type __id "admin_username";
       allow_extension_operations =
         Prop.computed __type __id "allow_extension_operations";
       availability_set_id =
         Prop.computed __type __id "availability_set_id";
       bypass_platform_safety_checks_on_user_schedule_enabled =
         Prop.computed __type __id
           "bypass_platform_safety_checks_on_user_schedule_enabled";
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       computer_name = Prop.computed __type __id "computer_name";
       custom_data = Prop.computed __type __id "custom_data";
       dedicated_host_group_id =
         Prop.computed __type __id "dedicated_host_group_id";
       dedicated_host_id =
         Prop.computed __type __id "dedicated_host_id";
       disk_controller_type =
         Prop.computed __type __id "disk_controller_type";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_automatic_updates =
         Prop.computed __type __id "enable_automatic_updates";
       encryption_at_host_enabled =
         Prop.computed __type __id "encryption_at_host_enabled";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       extensions_time_budget =
         Prop.computed __type __id "extensions_time_budget";
       hotpatching_enabled =
         Prop.computed __type __id "hotpatching_enabled";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_bid_price = Prop.computed __type __id "max_bid_price";
       name = Prop.computed __type __id "name";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       patch_assessment_mode =
         Prop.computed __type __id "patch_assessment_mode";
       patch_mode = Prop.computed __type __id "patch_mode";
       platform_fault_domain =
         Prop.computed __type __id "platform_fault_domain";
       priority = Prop.computed __type __id "priority";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       provision_vm_agent =
         Prop.computed __type __id "provision_vm_agent";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       public_ip_address =
         Prop.computed __type __id "public_ip_address";
       public_ip_addresses =
         Prop.computed __type __id "public_ip_addresses";
       reboot_setting = Prop.computed __type __id "reboot_setting";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secure_boot_enabled =
         Prop.computed __type __id "secure_boot_enabled";
       size = Prop.computed __type __id "size";
       source_image_id = Prop.computed __type __id "source_image_id";
       tags = Prop.computed __type __id "tags";
       timezone = Prop.computed __type __id "timezone";
       user_data = Prop.computed __type __id "user_data";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
       virtual_machine_scale_set_id =
         Prop.computed __type __id "virtual_machine_scale_set_id";
       vm_agent_platform_updates_enabled =
         Prop.computed __type __id
           "vm_agent_platform_updates_enabled";
       vtpm_enabled = Prop.computed __type __id "vtpm_enabled";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_windows_virtual_machine
        (azurerm_windows_virtual_machine ?allow_extension_operations
           ?availability_set_id
           ?bypass_platform_safety_checks_on_user_schedule_enabled
           ?capacity_reservation_group_id ?computer_name ?custom_data
           ?dedicated_host_group_id ?dedicated_host_id
           ?disk_controller_type ?edge_zone ?enable_automatic_updates
           ?encryption_at_host_enabled ?eviction_policy
           ?extensions_time_budget ?hotpatching_enabled ?id
           ?license_type ?max_bid_price ?patch_assessment_mode
           ?patch_mode ?platform_fault_domain ?priority
           ?provision_vm_agent ?proximity_placement_group_id
           ?reboot_setting ?secure_boot_enabled ?source_image_id
           ?tags ?timezone ?user_data ?virtual_machine_scale_set_id
           ?vm_agent_platform_updates_enabled ?vtpm_enabled ?zone
           ?timeouts ~admin_password ~admin_username ~location ~name
           ~network_interface_ids ~resource_group_name ~size
           ~additional_capabilities ~additional_unattend_content
           ~boot_diagnostics ~gallery_application ~identity ~os_disk
           ~os_image_notification ~plan ~secret
           ~source_image_reference ~termination_notification
           ~winrm_listener ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_extension_operations
    ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?timeouts ~admin_password ~admin_username
    ~location ~name ~network_interface_ids ~resource_group_name ~size
    ~additional_capabilities ~additional_unattend_content
    ~boot_diagnostics ~gallery_application ~identity ~os_disk
    ~os_image_notification ~plan ~secret ~source_image_reference
    ~termination_notification ~winrm_listener __id =
  let (r : _ Tf_core.resource) =
    make ?allow_extension_operations ?availability_set_id
      ?bypass_platform_safety_checks_on_user_schedule_enabled
      ?capacity_reservation_group_id ?computer_name ?custom_data
      ?dedicated_host_group_id ?dedicated_host_id
      ?disk_controller_type ?edge_zone ?enable_automatic_updates
      ?encryption_at_host_enabled ?eviction_policy
      ?extensions_time_budget ?hotpatching_enabled ?id ?license_type
      ?max_bid_price ?patch_assessment_mode ?patch_mode
      ?platform_fault_domain ?priority ?provision_vm_agent
      ?proximity_placement_group_id ?reboot_setting
      ?secure_boot_enabled ?source_image_id ?tags ?timezone
      ?user_data ?virtual_machine_scale_set_id
      ?vm_agent_platform_updates_enabled ?vtpm_enabled ?zone
      ?timeouts ~admin_password ~admin_username ~location ~name
      ~network_interface_ids ~resource_group_name ~size
      ~additional_capabilities ~additional_unattend_content
      ~boot_diagnostics ~gallery_application ~identity ~os_disk
      ~os_image_notification ~plan ~secret ~source_image_reference
      ~termination_notification ~winrm_listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
