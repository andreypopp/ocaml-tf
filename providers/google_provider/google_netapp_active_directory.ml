(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_active_directory__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_active_directory__timeouts *)

type google_netapp_active_directory = {
  aes_encryption : bool option; [@option]
      (** Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. *)
  backup_operators : string list option; [@option]
      (** Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  dns : string;
      (** Comma separated list of DNS server IP addresses for the Active Directory domain. *)
  domain : string;
      (** Fully qualified domain name for the Active Directory domain. *)
  encrypt_dc_connections : bool option; [@option]
      (** If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. *)
  kdc_hostname : string option; [@option]
      (** Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 *)
  kdc_ip : string option; [@option]
      (** IP address of the Active Directory server used as Kerberos Key Distribution Center. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  ldap_signing : bool option; [@option]
      (** Specifies whether or not the LDAP traffic needs to be signed. *)
  location : string;
      (** Name of the region for the policy to apply to. *)
  name : string;
      (** The resource name of the Active Directory pool. Needs to be unique per location. *)
  net_bios_prefix : string;
      (** NetBIOS name prefix of the server to be created.
A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
'\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME' *)
  nfs_users_with_ldap : bool option; [@option]
      (** Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups). *)
  password : string;
      (** Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform. *)
  security_operators : string list option; [@option]
      (** Domain accounts that require elevated privileges such as 'SeSecurityPrivilege' to manage security logs. Comma-separated list. *)
  site : string option; [@option]
      (** Specifies an Active Directory site to manage domain controller selection.
Use when Active Directory domain controllers in multiple regions are configured. Defaults to 'Default-First-Site-Name' if left empty. *)
  username : string;
      (** Username for the Active Directory account with permissions to create the compute account within the specified organizational unit. *)
  timeouts : google_netapp_active_directory__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_active_directory *)

let google_netapp_active_directory ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?security_operators
    ?site ?timeouts ~dns ~domain ~location ~name ~net_bios_prefix
    ~password ~username __resource_id =
  let __resource_type = "google_netapp_active_directory" in
  let __resource =
    {
      aes_encryption;
      backup_operators;
      description;
      dns;
      domain;
      encrypt_dc_connections;
      kdc_hostname;
      kdc_ip;
      labels;
      ldap_signing;
      location;
      name;
      net_bios_prefix;
      nfs_users_with_ldap;
      password;
      security_operators;
      site;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_active_directory __resource);
  ()
