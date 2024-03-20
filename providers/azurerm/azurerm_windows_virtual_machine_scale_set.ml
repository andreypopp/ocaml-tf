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

type automatic_instance_repair = {
  enabled : bool prop;  (** enabled *)
  grace_period : string prop option; [@option]  (** grace_period *)
}
[@@deriving yojson_of]
(** automatic_instance_repair *)

type automatic_os_upgrade_policy = {
  disable_automatic_rollback : bool prop;
      (** disable_automatic_rollback *)
  enable_automatic_os_upgrade : bool prop;
      (** enable_automatic_os_upgrade *)
}
[@@deriving yojson_of]
(** automatic_os_upgrade_policy *)

type boot_diagnostics = {
  storage_account_uri : string prop option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** boot_diagnostics *)

type data_disk = {
  caching : string prop;  (** caching *)
  create_option : string prop option; [@option]  (** create_option *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  lun : float prop;  (** lun *)
  name : string prop option; [@option]  (** name *)
  storage_account_type : string prop;  (** storage_account_type *)
  ultra_ssd_disk_iops_read_write : float prop option; [@option]
      (** ultra_ssd_disk_iops_read_write *)
  ultra_ssd_disk_mbps_read_write : float prop option; [@option]
      (** ultra_ssd_disk_mbps_read_write *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** data_disk *)

type extension__protected_settings_from_key_vault = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** extension__protected_settings_from_key_vault *)

type extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
      (** auto_upgrade_minor_version *)
  automatic_upgrade_enabled : bool prop option; [@option]
      (** automatic_upgrade_enabled *)
  force_update_tag : string prop option; [@option]
      (** force_update_tag *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  provision_after_extensions : string prop list option; [@option]
      (** provision_after_extensions *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
  protected_settings_from_key_vault :
    extension__protected_settings_from_key_vault list;
}
[@@deriving yojson_of]
(** extension *)

type gallery_application = {
  configuration_blob_uri : string prop option; [@option]
      (** configuration_blob_uri *)
  order : float prop option; [@option]  (** order *)
  tag : string prop option; [@option]  (** tag *)
  version_id : string prop;  (** version_id *)
}
[@@deriving yojson_of]
(** gallery_application *)

type gallery_applications = {
  configuration_reference_blob_uri : string prop option; [@option]
      (** configuration_reference_blob_uri *)
  order : float prop option; [@option]  (** order *)
  package_reference_id : string prop;  (** package_reference_id *)
  tag : string prop option; [@option]  (** tag *)
}
[@@deriving yojson_of]
(** gallery_applications *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** network_interface__ip_configuration__public_ip_address__ip_tag *)

type network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string prop option; [@option]
      (** domain_name_label *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  version : string prop option; [@option]  (** version *)
  ip_tag :
    network_interface__ip_configuration__public_ip_address__ip_tag
    list;
}
[@@deriving yojson_of]
(** network_interface__ip_configuration__public_ip_address *)

type network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids :
    string prop list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string prop list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string prop list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string prop list option;
      [@option]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string prop;  (** name *)
  primary : bool prop option; [@option]  (** primary *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  version : string prop option; [@option]  (** version *)
  public_ip_address :
    network_interface__ip_configuration__public_ip_address list;
}
[@@deriving yojson_of]
(** network_interface__ip_configuration *)

type network_interface = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  enable_accelerated_networking : bool prop option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool prop option; [@option]
      (** enable_ip_forwarding *)
  name : string prop;  (** name *)
  network_security_group_id : string prop option; [@option]
      (** network_security_group_id *)
  primary : bool prop option; [@option]  (** primary *)
  ip_configuration : network_interface__ip_configuration list;
}
[@@deriving yojson_of]
(** network_interface *)

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

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** plan *)

type rolling_upgrade_policy = {
  cross_zone_upgrades_enabled : bool prop option; [@option]
      (** cross_zone_upgrades_enabled *)
  max_batch_instance_percent : float prop;
      (** max_batch_instance_percent *)
  max_unhealthy_instance_percent : float prop;
      (** max_unhealthy_instance_percent *)
  max_unhealthy_upgraded_instance_percent : float prop;
      (** max_unhealthy_upgraded_instance_percent *)
  pause_time_between_batches : string prop;
      (** pause_time_between_batches *)
  prioritize_unhealthy_instances_enabled : bool prop option; [@option]
      (** prioritize_unhealthy_instances_enabled *)
}
[@@deriving yojson_of]
(** rolling_upgrade_policy *)

type scale_in = {
  force_deletion_enabled : bool prop option; [@option]
      (** force_deletion_enabled *)
  rule : string prop option; [@option]  (** rule *)
}
[@@deriving yojson_of]
(** scale_in *)

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

type spot_restore = {
  enabled : bool prop option; [@option]  (** enabled *)
  timeout : string prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** spot_restore *)

type terminate_notification = {
  enabled : bool prop;  (** enabled *)
  timeout : string prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** terminate_notification *)

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

type azurerm_windows_virtual_machine_scale_set = {
  admin_password : string prop;  (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  computer_name_prefix : string prop option; [@option]
      (** computer_name_prefix *)
  custom_data : string prop option; [@option]  (** custom_data *)
  do_not_run_extensions_on_overprovisioned_machines :
    bool prop option;
      [@option]
      (** do_not_run_extensions_on_overprovisioned_machines *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_automatic_updates : bool prop option; [@option]
      (** enable_automatic_updates *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  extension_operations_enabled : bool prop option; [@option]
      (** extension_operations_enabled *)
  extensions_time_budget : string prop option; [@option]
      (** extensions_time_budget *)
  health_probe_id : string prop option; [@option]
      (** health_probe_id *)
  host_group_id : string prop option; [@option]  (** host_group_id *)
  id : string prop option; [@option]  (** id *)
  instances : float prop;  (** instances *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_bid_price : float prop option; [@option]  (** max_bid_price *)
  name : string prop;  (** name *)
  overprovision : bool prop option; [@option]  (** overprovision *)
  platform_fault_domain_count : float prop option; [@option]
      (** platform_fault_domain_count *)
  priority : string prop option; [@option]  (** priority *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_in_policy : string prop option; [@option]
      (** scale_in_policy *)
  secure_boot_enabled : bool prop option; [@option]
      (** secure_boot_enabled *)
  single_placement_group : bool prop option; [@option]
      (** single_placement_group *)
  sku : string prop;  (** sku *)
  source_image_id : string prop option; [@option]
      (** source_image_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone : string prop option; [@option]  (** timezone *)
  upgrade_mode : string prop option; [@option]  (** upgrade_mode *)
  user_data : string prop option; [@option]  (** user_data *)
  vtpm_enabled : bool prop option; [@option]  (** vtpm_enabled *)
  zone_balance : bool prop option; [@option]  (** zone_balance *)
  zones : string prop list option; [@option]  (** zones *)
  additional_capabilities : additional_capabilities list;
  additional_unattend_content : additional_unattend_content list;
  automatic_instance_repair : automatic_instance_repair list;
  automatic_os_upgrade_policy : automatic_os_upgrade_policy list;
  boot_diagnostics : boot_diagnostics list;
  data_disk : data_disk list;
  extension : extension list;
  gallery_application : gallery_application list;
  gallery_applications : gallery_applications list;
  identity : identity list;
  network_interface : network_interface list;
  os_disk : os_disk list;
  plan : plan list;
  rolling_upgrade_policy : rolling_upgrade_policy list;
  scale_in : scale_in list;
  secret : secret list;
  source_image_reference : source_image_reference list;
  spot_restore : spot_restore list;
  terminate_notification : terminate_notification list;
  termination_notification : termination_notification list;
  timeouts : timeouts option;
  winrm_listener : winrm_listener list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set *)

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let additional_unattend_content ~content ~setting () :
    additional_unattend_content =
  { content; setting }

let automatic_instance_repair ?grace_period ~enabled () :
    automatic_instance_repair =
  { enabled; grace_period }

let automatic_os_upgrade_policy ~disable_automatic_rollback
    ~enable_automatic_os_upgrade () : automatic_os_upgrade_policy =
  { disable_automatic_rollback; enable_automatic_os_upgrade }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let data_disk ?create_option ?disk_encryption_set_id ?name
    ?ultra_ssd_disk_iops_read_write ?ultra_ssd_disk_mbps_read_write
    ?write_accelerator_enabled ~caching ~disk_size_gb ~lun
    ~storage_account_type () : data_disk =
  {
    caching;
    create_option;
    disk_encryption_set_id;
    disk_size_gb;
    lun;
    name;
    storage_account_type;
    ultra_ssd_disk_iops_read_write;
    ultra_ssd_disk_mbps_read_write;
    write_accelerator_enabled;
  }

let extension__protected_settings_from_key_vault ~secret_url
    ~source_vault_id () :
    extension__protected_settings_from_key_vault =
  { secret_url; source_vault_id }

let extension ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?force_update_tag ?protected_settings ?provision_after_extensions
    ?settings ~name ~publisher ~type_ ~type_handler_version
    ~protected_settings_from_key_vault () : extension =
  {
    auto_upgrade_minor_version;
    automatic_upgrade_enabled;
    force_update_tag;
    name;
    protected_settings;
    provision_after_extensions;
    publisher;
    settings;
    type_;
    type_handler_version;
    protected_settings_from_key_vault;
  }

let gallery_application ?configuration_blob_uri ?order ?tag
    ~version_id () : gallery_application =
  { configuration_blob_uri; order; tag; version_id }

let gallery_applications ?configuration_reference_blob_uri ?order
    ?tag ~package_reference_id () : gallery_applications =
  {
    configuration_reference_blob_uri;
    order;
    package_reference_id;
    tag;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_interface__ip_configuration__public_ip_address__ip_tag
    ~tag ~type_ () :
    network_interface__ip_configuration__public_ip_address__ip_tag =
  { tag; type_ }

let network_interface__ip_configuration__public_ip_address
    ?domain_name_label ?idle_timeout_in_minutes ?public_ip_prefix_id
    ?version ~name ~ip_tag () :
    network_interface__ip_configuration__public_ip_address =
  {
    domain_name_label;
    idle_timeout_in_minutes;
    name;
    public_ip_prefix_id;
    version;
    ip_tag;
  }

let network_interface__ip_configuration
    ?application_gateway_backend_address_pool_ids
    ?application_security_group_ids
    ?load_balancer_backend_address_pool_ids
    ?load_balancer_inbound_nat_rules_ids ?primary ?subnet_id ?version
    ~name ~public_ip_address () : network_interface__ip_configuration
    =
  {
    application_gateway_backend_address_pool_ids;
    application_security_group_ids;
    load_balancer_backend_address_pool_ids;
    load_balancer_inbound_nat_rules_ids;
    name;
    primary;
    subnet_id;
    version;
    public_ip_address;
  }

let network_interface ?dns_servers ?enable_accelerated_networking
    ?enable_ip_forwarding ?network_security_group_id ?primary ~name
    ~ip_configuration () : network_interface =
  {
    dns_servers;
    enable_accelerated_networking;
    enable_ip_forwarding;
    name;
    network_security_group_id;
    primary;
    ip_configuration;
  }

let os_disk__diff_disk_settings ?placement ~option_ () :
    os_disk__diff_disk_settings =
  { option_; placement }

let os_disk ?disk_encryption_set_id ?disk_size_gb
    ?secure_vm_disk_encryption_set_id ?security_encryption_type
    ?write_accelerator_enabled ~caching ~storage_account_type
    ~diff_disk_settings () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    secure_vm_disk_encryption_set_id;
    security_encryption_type;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let rolling_upgrade_policy ?cross_zone_upgrades_enabled
    ?prioritize_unhealthy_instances_enabled
    ~max_batch_instance_percent ~max_unhealthy_instance_percent
    ~max_unhealthy_upgraded_instance_percent
    ~pause_time_between_batches () : rolling_upgrade_policy =
  {
    cross_zone_upgrades_enabled;
    max_batch_instance_percent;
    max_unhealthy_instance_percent;
    max_unhealthy_upgraded_instance_percent;
    pause_time_between_batches;
    prioritize_unhealthy_instances_enabled;
  }

let scale_in ?force_deletion_enabled ?rule () : scale_in =
  { force_deletion_enabled; rule }

let secret__certificate ~store ~url () : secret__certificate =
  { store; url }

let secret ~key_vault_id ~certificate () : secret =
  { key_vault_id; certificate }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let spot_restore ?enabled ?timeout () : spot_restore =
  { enabled; timeout }

let terminate_notification ?timeout ~enabled () :
    terminate_notification =
  { enabled; timeout }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let winrm_listener ?certificate_url ~protocol () : winrm_listener =
  { certificate_url; protocol }

let azurerm_windows_virtual_machine_scale_set
    ?capacity_reservation_group_id ?computer_name_prefix ?custom_data
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?health_probe_id ?host_group_id ?id
    ?license_type ?max_bid_price ?overprovision
    ?platform_fault_domain_count ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?scale_in_policy
    ?secure_boot_enabled ?single_placement_group ?source_image_id
    ?tags ?timezone ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?timeouts ~admin_password ~admin_username
    ~instances ~location ~name ~resource_group_name ~sku
    ~additional_capabilities ~additional_unattend_content
    ~automatic_instance_repair ~automatic_os_upgrade_policy
    ~boot_diagnostics ~data_disk ~extension ~gallery_application
    ~gallery_applications ~identity ~network_interface ~os_disk ~plan
    ~rolling_upgrade_policy ~scale_in ~secret ~source_image_reference
    ~spot_restore ~terminate_notification ~termination_notification
    ~winrm_listener () : azurerm_windows_virtual_machine_scale_set =
  {
    admin_password;
    admin_username;
    capacity_reservation_group_id;
    computer_name_prefix;
    custom_data;
    do_not_run_extensions_on_overprovisioned_machines;
    edge_zone;
    enable_automatic_updates;
    encryption_at_host_enabled;
    eviction_policy;
    extension_operations_enabled;
    extensions_time_budget;
    health_probe_id;
    host_group_id;
    id;
    instances;
    license_type;
    location;
    max_bid_price;
    name;
    overprovision;
    platform_fault_domain_count;
    priority;
    provision_vm_agent;
    proximity_placement_group_id;
    resource_group_name;
    scale_in_policy;
    secure_boot_enabled;
    single_placement_group;
    sku;
    source_image_id;
    tags;
    timezone;
    upgrade_mode;
    user_data;
    vtpm_enabled;
    zone_balance;
    zones;
    additional_capabilities;
    additional_unattend_content;
    automatic_instance_repair;
    automatic_os_upgrade_policy;
    boot_diagnostics;
    data_disk;
    extension;
    gallery_application;
    gallery_applications;
    identity;
    network_interface;
    os_disk;
    plan;
    rolling_upgrade_policy;
    scale_in;
    secret;
    source_image_reference;
    spot_restore;
    terminate_notification;
    termination_notification;
    timeouts;
    winrm_listener;
  }

type t = {
  admin_password : string prop;
  admin_username : string prop;
  capacity_reservation_group_id : string prop;
  computer_name_prefix : string prop;
  custom_data : string prop;
  do_not_run_extensions_on_overprovisioned_machines : bool prop;
  edge_zone : string prop;
  enable_automatic_updates : bool prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  health_probe_id : string prop;
  host_group_id : string prop;
  id : string prop;
  instances : float prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  overprovision : bool prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  scale_in_policy : string prop;
  secure_boot_enabled : bool prop;
  single_placement_group : bool prop;
  sku : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  unique_id : string prop;
  upgrade_mode : string prop;
  user_data : string prop;
  vtpm_enabled : bool prop;
  zone_balance : bool prop;
  zones : string list prop;
}

let make ?capacity_reservation_group_id ?computer_name_prefix
    ?custom_data ?do_not_run_extensions_on_overprovisioned_machines
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?health_probe_id ?host_group_id ?id
    ?license_type ?max_bid_price ?overprovision
    ?platform_fault_domain_count ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?scale_in_policy
    ?secure_boot_enabled ?single_placement_group ?source_image_id
    ?tags ?timezone ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?timeouts ~admin_password ~admin_username
    ~instances ~location ~name ~resource_group_name ~sku
    ~additional_capabilities ~additional_unattend_content
    ~automatic_instance_repair ~automatic_os_upgrade_policy
    ~boot_diagnostics ~data_disk ~extension ~gallery_application
    ~gallery_applications ~identity ~network_interface ~os_disk ~plan
    ~rolling_upgrade_policy ~scale_in ~secret ~source_image_reference
    ~spot_restore ~terminate_notification ~termination_notification
    ~winrm_listener __id =
  let __type = "azurerm_windows_virtual_machine_scale_set" in
  let __attrs =
    ({
       admin_password = Prop.computed __type __id "admin_password";
       admin_username = Prop.computed __type __id "admin_username";
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       computer_name_prefix =
         Prop.computed __type __id "computer_name_prefix";
       custom_data = Prop.computed __type __id "custom_data";
       do_not_run_extensions_on_overprovisioned_machines =
         Prop.computed __type __id
           "do_not_run_extensions_on_overprovisioned_machines";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_automatic_updates =
         Prop.computed __type __id "enable_automatic_updates";
       encryption_at_host_enabled =
         Prop.computed __type __id "encryption_at_host_enabled";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       extension_operations_enabled =
         Prop.computed __type __id "extension_operations_enabled";
       extensions_time_budget =
         Prop.computed __type __id "extensions_time_budget";
       health_probe_id = Prop.computed __type __id "health_probe_id";
       host_group_id = Prop.computed __type __id "host_group_id";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_bid_price = Prop.computed __type __id "max_bid_price";
       name = Prop.computed __type __id "name";
       overprovision = Prop.computed __type __id "overprovision";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
       priority = Prop.computed __type __id "priority";
       provision_vm_agent =
         Prop.computed __type __id "provision_vm_agent";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_in_policy = Prop.computed __type __id "scale_in_policy";
       secure_boot_enabled =
         Prop.computed __type __id "secure_boot_enabled";
       single_placement_group =
         Prop.computed __type __id "single_placement_group";
       sku = Prop.computed __type __id "sku";
       source_image_id = Prop.computed __type __id "source_image_id";
       tags = Prop.computed __type __id "tags";
       timezone = Prop.computed __type __id "timezone";
       unique_id = Prop.computed __type __id "unique_id";
       upgrade_mode = Prop.computed __type __id "upgrade_mode";
       user_data = Prop.computed __type __id "user_data";
       vtpm_enabled = Prop.computed __type __id "vtpm_enabled";
       zone_balance = Prop.computed __type __id "zone_balance";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_windows_virtual_machine_scale_set
        (azurerm_windows_virtual_machine_scale_set
           ?capacity_reservation_group_id ?computer_name_prefix
           ?custom_data
           ?do_not_run_extensions_on_overprovisioned_machines
           ?edge_zone ?enable_automatic_updates
           ?encryption_at_host_enabled ?eviction_policy
           ?extension_operations_enabled ?extensions_time_budget
           ?health_probe_id ?host_group_id ?id ?license_type
           ?max_bid_price ?overprovision ?platform_fault_domain_count
           ?priority ?provision_vm_agent
           ?proximity_placement_group_id ?scale_in_policy
           ?secure_boot_enabled ?single_placement_group
           ?source_image_id ?tags ?timezone ?upgrade_mode ?user_data
           ?vtpm_enabled ?zone_balance ?zones ?timeouts
           ~admin_password ~admin_username ~instances ~location ~name
           ~resource_group_name ~sku ~additional_capabilities
           ~additional_unattend_content ~automatic_instance_repair
           ~automatic_os_upgrade_policy ~boot_diagnostics ~data_disk
           ~extension ~gallery_application ~gallery_applications
           ~identity ~network_interface ~os_disk ~plan
           ~rolling_upgrade_policy ~scale_in ~secret
           ~source_image_reference ~spot_restore
           ~terminate_notification ~termination_notification
           ~winrm_listener ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity_reservation_group_id
    ?computer_name_prefix ?custom_data
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?health_probe_id ?host_group_id ?id
    ?license_type ?max_bid_price ?overprovision
    ?platform_fault_domain_count ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?scale_in_policy
    ?secure_boot_enabled ?single_placement_group ?source_image_id
    ?tags ?timezone ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?timeouts ~admin_password ~admin_username
    ~instances ~location ~name ~resource_group_name ~sku
    ~additional_capabilities ~additional_unattend_content
    ~automatic_instance_repair ~automatic_os_upgrade_policy
    ~boot_diagnostics ~data_disk ~extension ~gallery_application
    ~gallery_applications ~identity ~network_interface ~os_disk ~plan
    ~rolling_upgrade_policy ~scale_in ~secret ~source_image_reference
    ~spot_restore ~terminate_notification ~termination_notification
    ~winrm_listener __id =
  let (r : _ Tf_core.resource) =
    make ?capacity_reservation_group_id ?computer_name_prefix
      ?custom_data ?do_not_run_extensions_on_overprovisioned_machines
      ?edge_zone ?enable_automatic_updates
      ?encryption_at_host_enabled ?eviction_policy
      ?extension_operations_enabled ?extensions_time_budget
      ?health_probe_id ?host_group_id ?id ?license_type
      ?max_bid_price ?overprovision ?platform_fault_domain_count
      ?priority ?provision_vm_agent ?proximity_placement_group_id
      ?scale_in_policy ?secure_boot_enabled ?single_placement_group
      ?source_image_id ?tags ?timezone ?upgrade_mode ?user_data
      ?vtpm_enabled ?zone_balance ?zones ?timeouts ~admin_password
      ~admin_username ~instances ~location ~name ~resource_group_name
      ~sku ~additional_capabilities ~additional_unattend_content
      ~automatic_instance_repair ~automatic_os_upgrade_policy
      ~boot_diagnostics ~data_disk ~extension ~gallery_application
      ~gallery_applications ~identity ~network_interface ~os_disk
      ~plan ~rolling_upgrade_policy ~scale_in ~secret
      ~source_image_reference ~spot_restore ~terminate_notification
      ~termination_notification ~winrm_listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
