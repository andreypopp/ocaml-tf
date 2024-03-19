(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type additional_capabilities = {
  ultra_ssd_enabled : bool prop option; [@option]
      (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** additional_capabilities *)

type automatic_instance_repair = {
  enabled : bool prop;  (** enabled *)
  grace_period : string prop option; [@option]  (** grace_period *)
}
[@@deriving yojson_of]
(** automatic_instance_repair *)

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
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  lun : float prop option; [@option]  (** lun *)
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
  auto_upgrade_minor_version_enabled : bool prop option; [@option]
      (** auto_upgrade_minor_version_enabled *)
  extensions_to_provision_after_vm_creation :
    string prop list option;
      [@option]
      (** extensions_to_provision_after_vm_creation *)
  failure_suppression_enabled : bool prop option; [@option]
      (** failure_suppression_enabled *)
  force_extension_execution_on_change : string prop option; [@option]
      (** force_extension_execution_on_change *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
  protected_settings_from_key_vault :
    extension__protected_settings_from_key_vault list;
}
[@@deriving yojson_of]
(** extension *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
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
  sku_name : string prop option; [@option]  (** sku_name *)
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
  storage_account_type : string prop;  (** storage_account_type *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings : os_disk__diff_disk_settings list;
}
[@@deriving yojson_of]
(** os_disk *)

type os_profile__linux_configuration__admin_ssh_key = {
  public_key : string prop;  (** public_key *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** os_profile__linux_configuration__admin_ssh_key *)

type os_profile__linux_configuration__secret__certificate = {
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** os_profile__linux_configuration__secret__certificate *)

type os_profile__linux_configuration__secret = {
  key_vault_id : string prop;  (** key_vault_id *)
  certificate :
    os_profile__linux_configuration__secret__certificate list;
}
[@@deriving yojson_of]
(** os_profile__linux_configuration__secret *)

type os_profile__linux_configuration = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name_prefix : string prop option; [@option]
      (** computer_name_prefix *)
  disable_password_authentication : bool prop option; [@option]
      (** disable_password_authentication *)
  patch_assessment_mode : string prop option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string prop option; [@option]  (** patch_mode *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  admin_ssh_key :
    os_profile__linux_configuration__admin_ssh_key list;
  secret : os_profile__linux_configuration__secret list;
}
[@@deriving yojson_of]
(** os_profile__linux_configuration *)

type os_profile__windows_configuration__additional_unattend_content = {
  content : string prop;  (** content *)
  setting : string prop;  (** setting *)
}
[@@deriving yojson_of]
(** os_profile__windows_configuration__additional_unattend_content *)

type os_profile__windows_configuration__secret__certificate = {
  store : string prop;  (** store *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** os_profile__windows_configuration__secret__certificate *)

type os_profile__windows_configuration__secret = {
  key_vault_id : string prop;  (** key_vault_id *)
  certificate :
    os_profile__windows_configuration__secret__certificate list;
}
[@@deriving yojson_of]
(** os_profile__windows_configuration__secret *)

type os_profile__windows_configuration__winrm_listener = {
  certificate_url : string prop option; [@option]
      (** certificate_url *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** os_profile__windows_configuration__winrm_listener *)

type os_profile__windows_configuration = {
  admin_password : string prop;  (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name_prefix : string prop option; [@option]
      (** computer_name_prefix *)
  enable_automatic_updates : bool prop option; [@option]
      (** enable_automatic_updates *)
  hotpatching_enabled : bool prop option; [@option]
      (** hotpatching_enabled *)
  patch_assessment_mode : string prop option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string prop option; [@option]  (** patch_mode *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  timezone : string prop option; [@option]  (** timezone *)
  additional_unattend_content :
    os_profile__windows_configuration__additional_unattend_content
    list;
  secret : os_profile__windows_configuration__secret list;
  winrm_listener :
    os_profile__windows_configuration__winrm_listener list;
}
[@@deriving yojson_of]
(** os_profile__windows_configuration *)

type os_profile = {
  custom_data : string prop option; [@option]  (** custom_data *)
  linux_configuration : os_profile__linux_configuration list;
  windows_configuration : os_profile__windows_configuration list;
}
[@@deriving yojson_of]
(** os_profile *)

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** plan *)

type priority_mix = {
  base_regular_count : float prop option; [@option]
      (** base_regular_count *)
  regular_percentage_above_base : float prop option; [@option]
      (** regular_percentage_above_base *)
}
[@@deriving yojson_of]
(** priority_mix *)

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

type azurerm_orchestrated_virtual_machine_scale_set = {
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  extension_operations_enabled : bool prop option; [@option]
      (** extension_operations_enabled *)
  extensions_time_budget : string prop option; [@option]
      (** extensions_time_budget *)
  id : string prop option; [@option]  (** id *)
  instances : float prop option; [@option]  (** instances *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_bid_price : float prop option; [@option]  (** max_bid_price *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop;
      (** platform_fault_domain_count *)
  priority : string prop option; [@option]  (** priority *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  single_placement_group : bool prop option; [@option]
      (** single_placement_group *)
  sku_name : string prop option; [@option]  (** sku_name *)
  source_image_id : string prop option; [@option]
      (** source_image_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_data_base64 : string prop option; [@option]
      (** user_data_base64 *)
  zone_balance : bool prop option; [@option]  (** zone_balance *)
  zones : string prop list option; [@option]  (** zones *)
  additional_capabilities : additional_capabilities list;
  automatic_instance_repair : automatic_instance_repair list;
  boot_diagnostics : boot_diagnostics list;
  data_disk : data_disk list;
  extension : extension list;
  identity : identity list;
  network_interface : network_interface list;
  os_disk : os_disk list;
  os_profile : os_profile list;
  plan : plan list;
  priority_mix : priority_mix list;
  source_image_reference : source_image_reference list;
  termination_notification : termination_notification list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set *)

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let automatic_instance_repair ?grace_period ~enabled () :
    automatic_instance_repair =
  { enabled; grace_period }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let data_disk ?create_option ?disk_encryption_set_id ?disk_size_gb
    ?lun ?ultra_ssd_disk_iops_read_write
    ?ultra_ssd_disk_mbps_read_write ?write_accelerator_enabled
    ~caching ~storage_account_type () : data_disk =
  {
    caching;
    create_option;
    disk_encryption_set_id;
    disk_size_gb;
    lun;
    storage_account_type;
    ultra_ssd_disk_iops_read_write;
    ultra_ssd_disk_mbps_read_write;
    write_accelerator_enabled;
  }

let extension__protected_settings_from_key_vault ~secret_url
    ~source_vault_id () :
    extension__protected_settings_from_key_vault =
  { secret_url; source_vault_id }

let extension ?auto_upgrade_minor_version_enabled
    ?extensions_to_provision_after_vm_creation
    ?failure_suppression_enabled ?force_extension_execution_on_change
    ?protected_settings ?settings ~name ~publisher ~type_
    ~type_handler_version ~protected_settings_from_key_vault () :
    extension =
  {
    auto_upgrade_minor_version_enabled;
    extensions_to_provision_after_vm_creation;
    failure_suppression_enabled;
    force_extension_execution_on_change;
    name;
    protected_settings;
    publisher;
    settings;
    type_;
    type_handler_version;
    protected_settings_from_key_vault;
  }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_interface__ip_configuration__public_ip_address__ip_tag
    ~tag ~type_ () :
    network_interface__ip_configuration__public_ip_address__ip_tag =
  { tag; type_ }

let network_interface__ip_configuration__public_ip_address
    ?domain_name_label ?idle_timeout_in_minutes ?public_ip_prefix_id
    ?sku_name ?version ~name ~ip_tag () :
    network_interface__ip_configuration__public_ip_address =
  {
    domain_name_label;
    idle_timeout_in_minutes;
    name;
    public_ip_prefix_id;
    sku_name;
    version;
    ip_tag;
  }

let network_interface__ip_configuration
    ?application_gateway_backend_address_pool_ids
    ?application_security_group_ids
    ?load_balancer_backend_address_pool_ids ?primary ?subnet_id
    ?version ~name ~public_ip_address () :
    network_interface__ip_configuration =
  {
    application_gateway_backend_address_pool_ids;
    application_security_group_ids;
    load_balancer_backend_address_pool_ids;
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
    ?write_accelerator_enabled ~caching ~storage_account_type
    ~diff_disk_settings () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let os_profile__linux_configuration__admin_ssh_key ~public_key
    ~username () : os_profile__linux_configuration__admin_ssh_key =
  { public_key; username }

let os_profile__linux_configuration__secret__certificate ~url () :
    os_profile__linux_configuration__secret__certificate =
  { url }

let os_profile__linux_configuration__secret ~key_vault_id
    ~certificate () : os_profile__linux_configuration__secret =
  { key_vault_id; certificate }

let os_profile__linux_configuration ?admin_password
    ?computer_name_prefix ?disable_password_authentication
    ?patch_assessment_mode ?patch_mode ?provision_vm_agent
    ~admin_username ~admin_ssh_key ~secret () :
    os_profile__linux_configuration =
  {
    admin_password;
    admin_username;
    computer_name_prefix;
    disable_password_authentication;
    patch_assessment_mode;
    patch_mode;
    provision_vm_agent;
    admin_ssh_key;
    secret;
  }

let os_profile__windows_configuration__additional_unattend_content
    ~content ~setting () :
    os_profile__windows_configuration__additional_unattend_content =
  { content; setting }

let os_profile__windows_configuration__secret__certificate ~store
    ~url () : os_profile__windows_configuration__secret__certificate
    =
  { store; url }

let os_profile__windows_configuration__secret ~key_vault_id
    ~certificate () : os_profile__windows_configuration__secret =
  { key_vault_id; certificate }

let os_profile__windows_configuration__winrm_listener
    ?certificate_url ~protocol () :
    os_profile__windows_configuration__winrm_listener =
  { certificate_url; protocol }

let os_profile__windows_configuration ?computer_name_prefix
    ?enable_automatic_updates ?hotpatching_enabled
    ?patch_assessment_mode ?patch_mode ?provision_vm_agent ?timezone
    ~admin_password ~admin_username ~additional_unattend_content
    ~secret ~winrm_listener () : os_profile__windows_configuration =
  {
    admin_password;
    admin_username;
    computer_name_prefix;
    enable_automatic_updates;
    hotpatching_enabled;
    patch_assessment_mode;
    patch_mode;
    provision_vm_agent;
    timezone;
    additional_unattend_content;
    secret;
    winrm_listener;
  }

let os_profile ?custom_data ~linux_configuration
    ~windows_configuration () : os_profile =
  { custom_data; linux_configuration; windows_configuration }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let priority_mix ?base_regular_count ?regular_percentage_above_base
    () : priority_mix =
  { base_regular_count; regular_percentage_above_base }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_orchestrated_virtual_machine_scale_set
    ?capacity_reservation_group_id ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?id ?instances ?license_type
    ?max_bid_price ?priority ?proximity_placement_group_id
    ?single_placement_group ?sku_name ?source_image_id ?tags
    ?user_data_base64 ?zone_balance ?zones ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name
    ~additional_capabilities ~automatic_instance_repair
    ~boot_diagnostics ~data_disk ~extension ~identity
    ~network_interface ~os_disk ~os_profile ~plan ~priority_mix
    ~source_image_reference ~termination_notification () :
    azurerm_orchestrated_virtual_machine_scale_set =
  {
    capacity_reservation_group_id;
    encryption_at_host_enabled;
    eviction_policy;
    extension_operations_enabled;
    extensions_time_budget;
    id;
    instances;
    license_type;
    location;
    max_bid_price;
    name;
    platform_fault_domain_count;
    priority;
    proximity_placement_group_id;
    resource_group_name;
    single_placement_group;
    sku_name;
    source_image_id;
    tags;
    user_data_base64;
    zone_balance;
    zones;
    additional_capabilities;
    automatic_instance_repair;
    boot_diagnostics;
    data_disk;
    extension;
    identity;
    network_interface;
    os_disk;
    os_profile;
    plan;
    priority_mix;
    source_image_reference;
    termination_notification;
    timeouts;
  }

type t = {
  capacity_reservation_group_id : string prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  id : string prop;
  instances : float prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  single_placement_group : bool prop;
  sku_name : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  unique_id : string prop;
  user_data_base64 : string prop;
  zone_balance : bool prop;
  zones : string list prop;
}

let register ?tf_module ?capacity_reservation_group_id
    ?encryption_at_host_enabled ?eviction_policy
    ?extension_operations_enabled ?extensions_time_budget ?id
    ?instances ?license_type ?max_bid_price ?priority
    ?proximity_placement_group_id ?single_placement_group ?sku_name
    ?source_image_id ?tags ?user_data_base64 ?zone_balance ?zones
    ?timeouts ~location ~name ~platform_fault_domain_count
    ~resource_group_name ~additional_capabilities
    ~automatic_instance_repair ~boot_diagnostics ~data_disk
    ~extension ~identity ~network_interface ~os_disk ~os_profile
    ~plan ~priority_mix ~source_image_reference
    ~termination_notification __resource_id =
  let __resource_type =
    "azurerm_orchestrated_virtual_machine_scale_set"
  in
  let __resource =
    azurerm_orchestrated_virtual_machine_scale_set
      ?capacity_reservation_group_id ?encryption_at_host_enabled
      ?eviction_policy ?extension_operations_enabled
      ?extensions_time_budget ?id ?instances ?license_type
      ?max_bid_price ?priority ?proximity_placement_group_id
      ?single_placement_group ?sku_name ?source_image_id ?tags
      ?user_data_base64 ?zone_balance ?zones ?timeouts ~location
      ~name ~platform_fault_domain_count ~resource_group_name
      ~additional_capabilities ~automatic_instance_repair
      ~boot_diagnostics ~data_disk ~extension ~identity
      ~network_interface ~os_disk ~os_profile ~plan ~priority_mix
      ~source_image_reference ~termination_notification ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orchestrated_virtual_machine_scale_set
       __resource);
  let __resource_attributes =
    ({
       capacity_reservation_group_id =
         Prop.computed __resource_type __resource_id
           "capacity_reservation_group_id";
       encryption_at_host_enabled =
         Prop.computed __resource_type __resource_id
           "encryption_at_host_enabled";
       eviction_policy =
         Prop.computed __resource_type __resource_id
           "eviction_policy";
       extension_operations_enabled =
         Prop.computed __resource_type __resource_id
           "extension_operations_enabled";
       extensions_time_budget =
         Prop.computed __resource_type __resource_id
           "extensions_time_budget";
       id = Prop.computed __resource_type __resource_id "id";
       instances =
         Prop.computed __resource_type __resource_id "instances";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       location =
         Prop.computed __resource_type __resource_id "location";
       max_bid_price =
         Prop.computed __resource_type __resource_id "max_bid_price";
       name = Prop.computed __resource_type __resource_id "name";
       platform_fault_domain_count =
         Prop.computed __resource_type __resource_id
           "platform_fault_domain_count";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       proximity_placement_group_id =
         Prop.computed __resource_type __resource_id
           "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       single_placement_group =
         Prop.computed __resource_type __resource_id
           "single_placement_group";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       source_image_id =
         Prop.computed __resource_type __resource_id
           "source_image_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
       user_data_base64 =
         Prop.computed __resource_type __resource_id
           "user_data_base64";
       zone_balance =
         Prop.computed __resource_type __resource_id "zone_balance";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
