(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_netapp_active_directory = {
  aes_encryption : bool prop option; [@option]
      (** Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. *)
  backup_operators : string prop list option; [@option]
      (** Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  dns : string prop;
      (** Comma separated list of DNS server IP addresses for the Active Directory domain. *)
  domain : string prop;
      (** Fully qualified domain name for the Active Directory domain. *)
  encrypt_dc_connections : bool prop option; [@option]
      (** If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. *)
  id : string prop option; [@option]  (** id *)
  kdc_hostname : string prop option; [@option]
      (** Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 *)
  kdc_ip : string prop option; [@option]
      (** IP address of the Active Directory server used as Kerberos Key Distribution Center. *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  ldap_signing : bool prop option; [@option]
      (** Specifies whether or not the LDAP traffic needs to be signed. *)
  location : string prop;
      (** Name of the region for the policy to apply to. *)
  name : string prop;
      (** The resource name of the Active Directory pool. Needs to be unique per location. *)
  net_bios_prefix : string prop;
      (** NetBIOS name prefix of the server to be created.
A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
'\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME' *)
  nfs_users_with_ldap : bool prop option; [@option]
      (** Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups). *)
  organizational_unit : string prop option; [@option]
      (** Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
Defaults to 'CN=Computers' if left empty. *)
  password : string prop;
      (** Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform. *)
  project : string prop option; [@option]  (** project *)
  security_operators : string prop list option; [@option]
      (** Domain accounts that require elevated privileges such as 'SeSecurityPrivilege' to manage security logs. Comma-separated list. *)
  site : string prop option; [@option]
      (** Specifies an Active Directory site to manage domain controller selection.
Use when Active Directory domain controllers in multiple regions are configured. Defaults to 'Default-First-Site-Name' if left empty. *)
  username : string prop;
      (** Username for the Active Directory account with permissions to create the compute account within the specified organizational unit. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_active_directory *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_active_directory ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
    ?project ?security_operators ?site ?timeouts ~dns ~domain
    ~location ~name ~net_bios_prefix ~password ~username () :
    google_netapp_active_directory =
  {
    aes_encryption;
    backup_operators;
    description;
    dns;
    domain;
    encrypt_dc_connections;
    id;
    kdc_hostname;
    kdc_ip;
    labels;
    ldap_signing;
    location;
    name;
    net_bios_prefix;
    nfs_users_with_ldap;
    organizational_unit;
    password;
    project;
    security_operators;
    site;
    username;
    timeouts;
  }

type t = {
  aes_encryption : bool prop;
  backup_operators : string list prop;
  create_time : string prop;
  description : string prop;
  dns : string prop;
  domain : string prop;
  effective_labels : (string * string) list prop;
  encrypt_dc_connections : bool prop;
  id : string prop;
  kdc_hostname : string prop;
  kdc_ip : string prop;
  labels : (string * string) list prop;
  ldap_signing : bool prop;
  location : string prop;
  name : string prop;
  net_bios_prefix : string prop;
  nfs_users_with_ldap : bool prop;
  organizational_unit : string prop;
  password : string prop;
  project : string prop;
  security_operators : string list prop;
  site : string prop;
  state : string prop;
  state_details : string prop;
  terraform_labels : (string * string) list prop;
  username : string prop;
}

let make ?aes_encryption ?backup_operators ?description
    ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip ?labels
    ?ldap_signing ?nfs_users_with_ldap ?organizational_unit ?project
    ?security_operators ?site ?timeouts ~dns ~domain ~location ~name
    ~net_bios_prefix ~password ~username __id =
  let __type = "google_netapp_active_directory" in
  let __attrs =
    ({
       aes_encryption = Prop.computed __type __id "aes_encryption";
       backup_operators =
         Prop.computed __type __id "backup_operators";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       dns = Prop.computed __type __id "dns";
       domain = Prop.computed __type __id "domain";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encrypt_dc_connections =
         Prop.computed __type __id "encrypt_dc_connections";
       id = Prop.computed __type __id "id";
       kdc_hostname = Prop.computed __type __id "kdc_hostname";
       kdc_ip = Prop.computed __type __id "kdc_ip";
       labels = Prop.computed __type __id "labels";
       ldap_signing = Prop.computed __type __id "ldap_signing";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       net_bios_prefix = Prop.computed __type __id "net_bios_prefix";
       nfs_users_with_ldap =
         Prop.computed __type __id "nfs_users_with_ldap";
       organizational_unit =
         Prop.computed __type __id "organizational_unit";
       password = Prop.computed __type __id "password";
       project = Prop.computed __type __id "project";
       security_operators =
         Prop.computed __type __id "security_operators";
       site = Prop.computed __type __id "site";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_active_directory
        (google_netapp_active_directory ?aes_encryption
           ?backup_operators ?description ?encrypt_dc_connections ?id
           ?kdc_hostname ?kdc_ip ?labels ?ldap_signing
           ?nfs_users_with_ldap ?organizational_unit ?project
           ?security_operators ?site ?timeouts ~dns ~domain ~location
           ~name ~net_bios_prefix ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
    ?project ?security_operators ?site ?timeouts ~dns ~domain
    ~location ~name ~net_bios_prefix ~password ~username __id =
  let (r : _ Tf_core.resource) =
    make ?aes_encryption ?backup_operators ?description
      ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip ?labels
      ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
      ?project ?security_operators ?site ?timeouts ~dns ~domain
      ~location ~name ~net_bios_prefix ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
