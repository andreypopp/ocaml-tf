(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_os_config_os_policy_assignment__instance_filter__exclusion_labels = {
  labels : (string * string) list option; [@option]
      (** Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. *)
}
[@@deriving yojson_of]
(** List of label sets used for VM exclusion.
If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM. *)

type google_os_config_os_policy_assignment__instance_filter__inclusion_labels = {
  labels : (string * string) list option; [@option]
      (** Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. *)
}
[@@deriving yojson_of]
(** List of label sets used for VM inclusion.
If the list has more than one 'LabelSet', the VM is included if any of the label sets are applicable for the VM. *)

type google_os_config_os_policy_assignment__instance_filter__inventories = {
  os_short_name : string;  (** The OS short name *)
  os_version : string option; [@option]
      (** The OS version Prefix matches are supported if asterisk(\*\) is provided as the last character. For example, to match all versions with a major version of '7', specify the following value for this field '7.*' An empty string matches all OS versions. *)
}
[@@deriving yojson_of]
(** List of inventories to select VMs.
A VM is selected if its inventory data matches at least one of the following inventories. *)

type google_os_config_os_policy_assignment__instance_filter = {
  all : bool option; [@option]
      (** Target all VMs in the project. If true, no other criteria is permitted. *)
  exclusion_labels :
    google_os_config_os_policy_assignment__instance_filter__exclusion_labels
    list;
  inclusion_labels :
    google_os_config_os_policy_assignment__instance_filter__inclusion_labels
    list;
  inventories :
    google_os_config_os_policy_assignment__instance_filter__inventories
    list;
}
[@@deriving yojson_of]
(** Filter to select VMs. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__inventory_filters = {
  os_short_name : string;  (** The OS short name *)
  os_version : string option; [@option]
      (** The OS version
Prefix matches are supported if asterisk(\*\) is provided as the last character. For example, to match all versions with a major version of '7', specify the following value for this field '7.*'
An empty string matches all OS versions. *)
}
[@@deriving yojson_of]
(** List of inventory filters for the resource group.
The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters.
For example, to apply this resource group to VMs running either 'RHEL' or 'CentOS' operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos'
If the list is empty, this resource group will be applied to the target VM unconditionally. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file__remote
    list;
}
[@@deriving yojson_of]
(** A remote or local file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce = {
  args : string list option; [@option]
      (** Optional arguments to pass to the source during execution. *)
  interpreter : string;
      (** The script interpreter to use. Possible values: [INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL] *)
  output_file_path : string option; [@option]
      (** Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. *)
  script : string option; [@option]
      (** An inline script. The size of the script is limited to 1024 characters. *)
  file :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce__file
    list;
}
[@@deriving yojson_of]
(** What to run to bring this resource into the desired state. An exit code of 100 indicates success, any other exit code indicates a failure running enforce. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file__remote
    list;
}
[@@deriving yojson_of]
(** A remote or local file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate = {
  args : string list option; [@option]
      (** Optional arguments to pass to the source during execution. *)
  interpreter : string;
      (** The script interpreter to use. Possible values: [INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL] *)
  output_file_path : string option; [@option]
      (** Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. *)
  script : string option; [@option]
      (** An inline script. The size of the script is limited to 1024 characters. *)
  file :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate__file
    list;
}
[@@deriving yojson_of]
(** What to run to validate this resource is in the desired state. An exit code of 100 indicates in desired state, and exit code of 101 indicates not in desired state. Any other exit code indicates a failure running validate. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec = {
  enforce :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__enforce
    list;
  validate :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec__validate
    list;
}
[@@deriving yojson_of]
(** Exec resource *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file__remote
    list;
}
[@@deriving yojson_of]
(** A remote or local source. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file = {
  content : string option; [@option]
      (** A a file with this content. The size of the content is limited to 1024 characters. *)
  path : string;  (** The absolute path of the file within the VM. *)
  permissions : string;
      (** Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755.
Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4 *)
  state : string;
      (** Desired state of the file. Possible values: [DESIRED_STATE_UNSPECIFIED, PRESENT, ABSENT, CONTENTS_MATCH] *)
  file :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file__file
    list;
}
[@@deriving yojson_of]
(** File resource *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__apt = {
  name : string;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by Apt. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source__remote
    list;
}
[@@deriving yojson_of]
(** A deb package. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb = {
  pull_deps : bool option; [@option]
      (** Whether dependencies should also be installed. - install when false: 'dpkg -i package' - install when true: 'apt-get update && apt-get -y install package.deb' *)
  source :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb__source
    list;
}
[@@deriving yojson_of]
(** A deb package file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__googet = {
  name : string;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by GooGet. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source__remote
    list;
}
[@@deriving yojson_of]
(** The MSI package. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi = {
  properties : string list option; [@option]
      (** Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of 'ACTION=INSTALL REBOOT=ReallySuppress'. *)
  source :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi__source
    list;
}
[@@deriving yojson_of]
(** An MSI package. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source__gcs = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation : float option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source__remote = {
  sha256_checksum : string option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source = {
  allow_insecure : bool option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source__gcs
    list;
  remote :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source__remote
    list;
}
[@@deriving yojson_of]
(** An rpm package. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm = {
  pull_deps : bool option; [@option]
      (** Whether dependencies should also be installed. - install when false: 'rpm --upgrade --replacepkgs package.rpm' - install when true: 'yum -y install package.rpm' or 'zypper -y install package.rpm' *)
  source :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm__source
    list;
}
[@@deriving yojson_of]
(** An rpm package file. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__yum = {
  name : string;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by YUM. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__zypper = {
  name : string;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by Zypper. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg = {
  desired_state : string;
      (** The desired state the agent should maintain for this package. Possible values: [DESIRED_STATE_UNSPECIFIED, INSTALLED, REMOVED] *)
  apt :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__apt
    list;
  deb :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__deb
    list;
  googet :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__googet
    list;
  msi :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__msi
    list;
  rpm :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__rpm
    list;
  yum :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__yum
    list;
  zypper :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg__zypper
    list;
}
[@@deriving yojson_of]
(** Package resource *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__apt = {
  archive_type : string;
      (** Type of archive files in this repository. Possible values: [ARCHIVE_TYPE_UNSPECIFIED, DEB, DEB_SRC] *)
  components : string list;
      (** List of components for this repository. Must contain at least one item. *)
  distribution : string;  (** Distribution of this repository. *)
  gpg_key : string option; [@option]
      (** URI of the key file for this repository. The agent maintains a keyring at '/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg'. *)
  uri : string;  (** URI for this repository. *)
}
[@@deriving yojson_of]
(** An Apt Repository. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__goo = {
  name : string;  (** The name of the repository. *)
  url : string;  (** The url of the repository. *)
}
[@@deriving yojson_of]
(** A Goo Repository. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__yum = {
  base_url : string;
      (** The location of the repository directory. *)
  display_name : string option; [@option]
      (** The display name of the repository. *)
  gpg_keys : string list option; [@option]  (** URIs of GPG keys. *)
  id : string;
      (** A one word, unique name for this repository. This is the 'repo id' in the yum config file and also the 'display_name' if 'display_name' is omitted. This id is also used as the unique identifier when checking for resource conflicts. *)
}
[@@deriving yojson_of]
(** A Yum Repository. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__zypper = {
  base_url : string;
      (** The location of the repository directory. *)
  display_name : string option; [@option]
      (** The display name of the repository. *)
  gpg_keys : string list option; [@option]  (** URIs of GPG keys. *)
  id : string;
      (** A one word, unique name for this repository. This is the 'repo id' in the zypper config file and also the 'display_name' if 'display_name' is omitted. This id is also used as the unique identifier when checking for GuestPolicy conflicts. *)
}
[@@deriving yojson_of]
(** A Zypper Repository. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository = {
  apt :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__apt
    list;
  goo :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__goo
    list;
  yum :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__yum
    list;
  zypper :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository__zypper
    list;
}
[@@deriving yojson_of]
(** Package repository resource *)

type google_os_config_os_policy_assignment__os_policies__resource_groups__resources = {
  id : string;
      (** The id of the resource with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the OS policy. *)
  exec :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__exec
    list;
  file :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__file
    list;
  pkg :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__pkg
    list;
  repository :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources__repository
    list;
}
[@@deriving yojson_of]
(** List of resources configured for this resource group. The resources are executed in the exact order specified here. *)

type google_os_config_os_policy_assignment__os_policies__resource_groups = {
  inventory_filters :
    google_os_config_os_policy_assignment__os_policies__resource_groups__inventory_filters
    list;
  resources :
    google_os_config_os_policy_assignment__os_policies__resource_groups__resources
    list;
}
[@@deriving yojson_of]
(** List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored.
If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag 'allow_no_resource_group_match' *)

type google_os_config_os_policy_assignment__os_policies = {
  allow_no_resource_group_match : bool option; [@option]
      (** This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to 'true' if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce. *)
  description : string option; [@option]
      (** Policy description. Length of the description is limited to 1024 characters. *)
  id : string;
      (** The id of the OS policy with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the assignment. *)
  mode : string;
      (** Policy mode Possible values: [MODE_UNSPECIFIED, VALIDATION, ENFORCEMENT] *)
  resource_groups :
    google_os_config_os_policy_assignment__os_policies__resource_groups
    list;
}
[@@deriving yojson_of]
(** List of OS policies to be applied to the VMs. *)

type google_os_config_os_policy_assignment__rollout__disruption_budget = {
  fixed : float option; [@option]  (** Specifies a fixed value. *)
  percent : float option; [@option]
      (** Specifies the relative value defined as a percentage, which will be multiplied by a reference value. *)
}
[@@deriving yojson_of]
(** The maximum number (or percentage) of VMs per zone to disrupt at any given moment. *)

type google_os_config_os_policy_assignment__rollout = {
  min_wait_duration : string;
      (** This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the 'disruption_budget' at least until this duration of time has passed after configuration changes are applied. *)
  disruption_budget :
    google_os_config_os_policy_assignment__rollout__disruption_budget
    list;
}
[@@deriving yojson_of]
(** Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. *)

type google_os_config_os_policy_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_os_config_os_policy_assignment__timeouts *)

type google_os_config_os_policy_assignment = {
  description : string option; [@option]
      (** OS policy assignment description. Length of the description is limited to 1024 characters. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the resource *)
  name : string;  (** Resource name. *)
  project : string option; [@option]
      (** The project for the resource *)
  skip_await_rollout : bool option; [@option]
      (** Set to true to skip awaiting rollout during resource creation and update. *)
  instance_filter :
    google_os_config_os_policy_assignment__instance_filter list;
  os_policies :
    google_os_config_os_policy_assignment__os_policies list;
  rollout : google_os_config_os_policy_assignment__rollout list;
  timeouts : google_os_config_os_policy_assignment__timeouts option;
}
[@@deriving yojson_of]
(** google_os_config_os_policy_assignment *)

let google_os_config_os_policy_assignment ?description ?id ?project
    ?skip_await_rollout ?timeouts ~location ~name ~instance_filter
    ~os_policies ~rollout __resource_id =
  let __resource_type = "google_os_config_os_policy_assignment" in
  let __resource =
    {
      description;
      id;
      location;
      name;
      project;
      skip_await_rollout;
      instance_filter;
      os_policies;
      rollout;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_os_config_os_policy_assignment __resource);
  ()
