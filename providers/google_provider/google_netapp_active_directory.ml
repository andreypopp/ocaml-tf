(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_active_directory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_active_directory__timeouts *)

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
  timeouts : google_netapp_active_directory__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_active_directory *)

let google_netapp_active_directory ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
    ?project ?security_operators ?site ?timeouts ~dns ~domain
    ~location ~name ~net_bios_prefix ~password ~username
    __resource_id =
  let __resource_type = "google_netapp_active_directory" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_active_directory __resource);
  ()
