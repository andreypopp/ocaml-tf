(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_windows_virtual_machine_scale_set__additional_capabilities = {
  ultra_ssd_enabled : bool option; [@option]  (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__additional_capabilities *)

type azurerm_windows_virtual_machine_scale_set__additional_unattend_content = {
  content : string;  (** content *)
  setting : string;  (** setting *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__additional_unattend_content *)

type azurerm_windows_virtual_machine_scale_set__automatic_instance_repair = {
  enabled : bool;  (** enabled *)
  grace_period : string option; [@option]  (** grace_period *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__automatic_instance_repair *)

type azurerm_windows_virtual_machine_scale_set__automatic_os_upgrade_policy = {
  disable_automatic_rollback : bool;
      (** disable_automatic_rollback *)
  enable_automatic_os_upgrade : bool;
      (** enable_automatic_os_upgrade *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__automatic_os_upgrade_policy *)

type azurerm_windows_virtual_machine_scale_set__boot_diagnostics = {
  storage_account_uri : string option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__boot_diagnostics *)

type azurerm_windows_virtual_machine_scale_set__data_disk = {
  caching : string;  (** caching *)
  create_option : string option; [@option]  (** create_option *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float;  (** disk_size_gb *)
  lun : float;  (** lun *)
  name : string option; [@option]  (** name *)
  storage_account_type : string;  (** storage_account_type *)
  ultra_ssd_disk_iops_read_write : float option; [@option]
      (** ultra_ssd_disk_iops_read_write *)
  ultra_ssd_disk_mbps_read_write : float option; [@option]
      (** ultra_ssd_disk_mbps_read_write *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__data_disk *)

type azurerm_windows_virtual_machine_scale_set__extension__protected_settings_from_key_vault = {
  secret_url : string;  (** secret_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__extension__protected_settings_from_key_vault *)

type azurerm_windows_virtual_machine_scale_set__extension = {
  auto_upgrade_minor_version : bool option; [@option]
      (** auto_upgrade_minor_version *)
  automatic_upgrade_enabled : bool option; [@option]
      (** automatic_upgrade_enabled *)
  force_update_tag : string option; [@option]
      (** force_update_tag *)
  name : string;  (** name *)
  protected_settings : string option; [@option]
      (** protected_settings *)
  provision_after_extensions : string list option; [@option]
      (** provision_after_extensions *)
  publisher : string;  (** publisher *)
  settings : string option; [@option]  (** settings *)
  type_ : string; [@key "type"]  (** type *)
  type_handler_version : string;  (** type_handler_version *)
  protected_settings_from_key_vault :
    azurerm_windows_virtual_machine_scale_set__extension__protected_settings_from_key_vault
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__extension *)

type azurerm_windows_virtual_machine_scale_set__gallery_application = {
  configuration_blob_uri : string option; [@option]
      (** configuration_blob_uri *)
  order : float option; [@option]  (** order *)
  tag : string option; [@option]  (** tag *)
  version_id : string;  (** version_id *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__gallery_application *)

type azurerm_windows_virtual_machine_scale_set__gallery_applications = {
  configuration_reference_blob_uri : string option; [@option]
      (** configuration_reference_blob_uri *)
  order : float option; [@option]  (** order *)
  package_reference_id : string;  (** package_reference_id *)
  tag : string option; [@option]  (** tag *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__gallery_applications *)

type azurerm_windows_virtual_machine_scale_set__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__identity *)

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string;  (** tag *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag *)

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string option; [@option]
      (** domain_name_label *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  name : string;  (** name *)
  public_ip_prefix_id : string option; [@option]
      (** public_ip_prefix_id *)
  version : string option; [@option]  (** version *)
  ip_tag :
    azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address *)

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids : string list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string list option; [@option]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string;  (** name *)
  primary : bool option; [@option]  (** primary *)
  subnet_id : string option; [@option]  (** subnet_id *)
  version : string option; [@option]  (** version *)
  public_ip_address :
    azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration *)

type azurerm_windows_virtual_machine_scale_set__network_interface = {
  dns_servers : string list option; [@option]  (** dns_servers *)
  enable_accelerated_networking : bool option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool option; [@option]
      (** enable_ip_forwarding *)
  name : string;  (** name *)
  network_security_group_id : string option; [@option]
      (** network_security_group_id *)
  primary : bool option; [@option]  (** primary *)
  ip_configuration :
    azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__network_interface *)

type azurerm_windows_virtual_machine_scale_set__os_disk__diff_disk_settings = {
  option : string;  (** option *)
  placement : string option; [@option]  (** placement *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__os_disk__diff_disk_settings *)

type azurerm_windows_virtual_machine_scale_set__os_disk = {
  caching : string;  (** caching *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  secure_vm_disk_encryption_set_id : string option; [@option]
      (** secure_vm_disk_encryption_set_id *)
  security_encryption_type : string option; [@option]
      (** security_encryption_type *)
  storage_account_type : string;  (** storage_account_type *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings :
    azurerm_windows_virtual_machine_scale_set__os_disk__diff_disk_settings
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__os_disk *)

type azurerm_windows_virtual_machine_scale_set__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__plan *)

type azurerm_windows_virtual_machine_scale_set__rolling_upgrade_policy = {
  cross_zone_upgrades_enabled : bool option; [@option]
      (** cross_zone_upgrades_enabled *)
  max_batch_instance_percent : float;
      (** max_batch_instance_percent *)
  max_unhealthy_instance_percent : float;
      (** max_unhealthy_instance_percent *)
  max_unhealthy_upgraded_instance_percent : float;
      (** max_unhealthy_upgraded_instance_percent *)
  pause_time_between_batches : string;
      (** pause_time_between_batches *)
  prioritize_unhealthy_instances_enabled : bool option; [@option]
      (** prioritize_unhealthy_instances_enabled *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__rolling_upgrade_policy *)

type azurerm_windows_virtual_machine_scale_set__scale_in = {
  force_deletion_enabled : bool option; [@option]
      (** force_deletion_enabled *)
  rule : string option; [@option]  (** rule *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__scale_in *)

type azurerm_windows_virtual_machine_scale_set__secret__certificate = {
  store : string;  (** store *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__secret__certificate *)

type azurerm_windows_virtual_machine_scale_set__secret = {
  key_vault_id : string;  (** key_vault_id *)
  certificate :
    azurerm_windows_virtual_machine_scale_set__secret__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__secret *)

type azurerm_windows_virtual_machine_scale_set__source_image_reference = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__source_image_reference *)

type azurerm_windows_virtual_machine_scale_set__spot_restore = {
  enabled : bool option; [@option]  (** enabled *)
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__spot_restore *)

type azurerm_windows_virtual_machine_scale_set__terminate_notification = {
  enabled : bool;  (** enabled *)
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__terminate_notification *)

type azurerm_windows_virtual_machine_scale_set__termination_notification = {
  enabled : bool;  (** enabled *)
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__termination_notification *)

type azurerm_windows_virtual_machine_scale_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__timeouts *)

type azurerm_windows_virtual_machine_scale_set__winrm_listener = {
  certificate_url : string option; [@option]  (** certificate_url *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set__winrm_listener *)

type azurerm_windows_virtual_machine_scale_set = {
  admin_password : string;  (** admin_password *)
  admin_username : string;  (** admin_username *)
  capacity_reservation_group_id : string option; [@option]
      (** capacity_reservation_group_id *)
  custom_data : string option; [@option]  (** custom_data *)
  do_not_run_extensions_on_overprovisioned_machines : bool option;
      [@option]
      (** do_not_run_extensions_on_overprovisioned_machines *)
  edge_zone : string option; [@option]  (** edge_zone *)
  enable_automatic_updates : bool option; [@option]
      (** enable_automatic_updates *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  extensions_time_budget : string option; [@option]
      (** extensions_time_budget *)
  health_probe_id : string option; [@option]  (** health_probe_id *)
  host_group_id : string option; [@option]  (** host_group_id *)
  instances : float;  (** instances *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  max_bid_price : float option; [@option]  (** max_bid_price *)
  name : string;  (** name *)
  overprovision : bool option; [@option]  (** overprovision *)
  priority : string option; [@option]  (** priority *)
  provision_vm_agent : bool option; [@option]
      (** provision_vm_agent *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string;  (** resource_group_name *)
  secure_boot_enabled : bool option; [@option]
      (** secure_boot_enabled *)
  single_placement_group : bool option; [@option]
      (** single_placement_group *)
  sku : string;  (** sku *)
  source_image_id : string option; [@option]  (** source_image_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timezone : string option; [@option]  (** timezone *)
  upgrade_mode : string option; [@option]  (** upgrade_mode *)
  user_data : string option; [@option]  (** user_data *)
  vtpm_enabled : bool option; [@option]  (** vtpm_enabled *)
  zone_balance : bool option; [@option]  (** zone_balance *)
  zones : string list option; [@option]  (** zones *)
  additional_capabilities :
    azurerm_windows_virtual_machine_scale_set__additional_capabilities
    list;
  additional_unattend_content :
    azurerm_windows_virtual_machine_scale_set__additional_unattend_content
    list;
  automatic_instance_repair :
    azurerm_windows_virtual_machine_scale_set__automatic_instance_repair
    list;
  automatic_os_upgrade_policy :
    azurerm_windows_virtual_machine_scale_set__automatic_os_upgrade_policy
    list;
  boot_diagnostics :
    azurerm_windows_virtual_machine_scale_set__boot_diagnostics list;
  data_disk :
    azurerm_windows_virtual_machine_scale_set__data_disk list;
  extension :
    azurerm_windows_virtual_machine_scale_set__extension list;
  gallery_application :
    azurerm_windows_virtual_machine_scale_set__gallery_application
    list;
  gallery_applications :
    azurerm_windows_virtual_machine_scale_set__gallery_applications
    list;
  identity :
    azurerm_windows_virtual_machine_scale_set__identity list;
  network_interface :
    azurerm_windows_virtual_machine_scale_set__network_interface list;
  os_disk : azurerm_windows_virtual_machine_scale_set__os_disk list;
  plan : azurerm_windows_virtual_machine_scale_set__plan list;
  rolling_upgrade_policy :
    azurerm_windows_virtual_machine_scale_set__rolling_upgrade_policy
    list;
  scale_in :
    azurerm_windows_virtual_machine_scale_set__scale_in list;
  secret : azurerm_windows_virtual_machine_scale_set__secret list;
  source_image_reference :
    azurerm_windows_virtual_machine_scale_set__source_image_reference
    list;
  spot_restore :
    azurerm_windows_virtual_machine_scale_set__spot_restore list;
  terminate_notification :
    azurerm_windows_virtual_machine_scale_set__terminate_notification
    list;
  termination_notification :
    azurerm_windows_virtual_machine_scale_set__termination_notification
    list;
  timeouts :
    azurerm_windows_virtual_machine_scale_set__timeouts option;
  winrm_listener :
    azurerm_windows_virtual_machine_scale_set__winrm_listener list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine_scale_set *)

let azurerm_windows_virtual_machine_scale_set
    ?capacity_reservation_group_id ?custom_data
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?health_probe_id
    ?host_group_id ?license_type ?max_bid_price ?overprovision
    ?priority ?provision_vm_agent ?proximity_placement_group_id
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
    ~winrm_listener __resource_id =
  let __resource_type =
    "azurerm_windows_virtual_machine_scale_set"
  in
  let __resource =
    {
      admin_password;
      admin_username;
      capacity_reservation_group_id;
      custom_data;
      do_not_run_extensions_on_overprovisioned_machines;
      edge_zone;
      enable_automatic_updates;
      encryption_at_host_enabled;
      eviction_policy;
      extensions_time_budget;
      health_probe_id;
      host_group_id;
      instances;
      license_type;
      location;
      max_bid_price;
      name;
      overprovision;
      priority;
      provision_vm_agent;
      proximity_placement_group_id;
      resource_group_name;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_windows_virtual_machine_scale_set __resource);
  ()
