(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_filter__exclusion_labels = {
  labels : (string * string prop) list option; [@option]
      (** Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. *)
}
[@@deriving yojson_of]
(** List of label sets used for VM exclusion.
If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM. *)

type instance_filter__inclusion_labels = {
  labels : (string * string prop) list option; [@option]
      (** Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. *)
}
[@@deriving yojson_of]
(** List of label sets used for VM inclusion.
If the list has more than one 'LabelSet', the VM is included if any of the label sets are applicable for the VM. *)

type instance_filter__inventories = {
  os_short_name : string prop;  (** The OS short name *)
  os_version : string prop option; [@option]
      (** The OS version Prefix matches are supported if asterisk(\*\) is provided as the last character. For example, to match all versions with a major version of '7', specify the following value for this field '7.*' An empty string matches all OS versions. *)
}
[@@deriving yojson_of]
(** List of inventories to select VMs.
A VM is selected if its inventory data matches at least one of the following inventories. *)

type instance_filter = {
  all : bool prop option; [@option]
      (** Target all VMs in the project. If true, no other criteria is permitted. *)
  exclusion_labels : instance_filter__exclusion_labels list;
  inclusion_labels : instance_filter__inclusion_labels list;
  inventories : instance_filter__inventories list;
}
[@@deriving yojson_of]
(** Filter to select VMs. *)

type os_policies__resource_groups__inventory_filters = {
  os_short_name : string prop;  (** The OS short name *)
  os_version : string prop option; [@option]
      (** The OS version
Prefix matches are supported if asterisk(\*\) is provided as the last character. For example, to match all versions with a major version of '7', specify the following value for this field '7.*'
An empty string matches all OS versions. *)
}
[@@deriving yojson_of]
(** List of inventory filters for the resource group.
The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters.
For example, to apply this resource group to VMs running either 'RHEL' or 'CentOS' operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos'
If the list is empty, this resource group will be applied to the target VM unconditionally. *)

type os_policies__resource_groups__resources__exec__enforce__file__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__exec__enforce__file__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__exec__enforce__file = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__exec__enforce__file__gcs
    list;
  remote :
    os_policies__resource_groups__resources__exec__enforce__file__remote
    list;
}
[@@deriving yojson_of]
(** A remote or local file. *)

type os_policies__resource_groups__resources__exec__enforce = {
  args : string prop list option; [@option]
      (** Optional arguments to pass to the source during execution. *)
  interpreter : string prop;
      (** The script interpreter to use. Possible values: [INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL] *)
  output_file_path : string prop option; [@option]
      (** Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. *)
  script : string prop option; [@option]
      (** An inline script. The size of the script is limited to 1024 characters. *)
  file :
    os_policies__resource_groups__resources__exec__enforce__file list;
}
[@@deriving yojson_of]
(** What to run to bring this resource into the desired state. An exit code of 100 indicates success, any other exit code indicates a failure running enforce. *)

type os_policies__resource_groups__resources__exec__validate__file__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__exec__validate__file__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__exec__validate__file = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__exec__validate__file__gcs
    list;
  remote :
    os_policies__resource_groups__resources__exec__validate__file__remote
    list;
}
[@@deriving yojson_of]
(** A remote or local file. *)

type os_policies__resource_groups__resources__exec__validate = {
  args : string prop list option; [@option]
      (** Optional arguments to pass to the source during execution. *)
  interpreter : string prop;
      (** The script interpreter to use. Possible values: [INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL] *)
  output_file_path : string prop option; [@option]
      (** Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. *)
  script : string prop option; [@option]
      (** An inline script. The size of the script is limited to 1024 characters. *)
  file :
    os_policies__resource_groups__resources__exec__validate__file
    list;
}
[@@deriving yojson_of]
(** What to run to validate this resource is in the desired state. An exit code of 100 indicates in desired state, and exit code of 101 indicates not in desired state. Any other exit code indicates a failure running validate. *)

type os_policies__resource_groups__resources__exec = {
  enforce :
    os_policies__resource_groups__resources__exec__enforce list;
  validate :
    os_policies__resource_groups__resources__exec__validate list;
}
[@@deriving yojson_of]
(** Exec resource *)

type os_policies__resource_groups__resources__file__file__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__file__file__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__file__file = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__file__file__gcs list;
  remote :
    os_policies__resource_groups__resources__file__file__remote list;
}
[@@deriving yojson_of]
(** A remote or local source. *)

type os_policies__resource_groups__resources__file = {
  content : string prop option; [@option]
      (** A a file with this content. The size of the content is limited to 1024 characters. *)
  path : string prop;
      (** The absolute path of the file within the VM. *)
  state : string prop;
      (** Desired state of the file. Possible values: [DESIRED_STATE_UNSPECIFIED, PRESENT, ABSENT, CONTENTS_MATCH] *)
  file : os_policies__resource_groups__resources__file__file list;
}
[@@deriving yojson_of]
(** File resource *)

type os_policies__resource_groups__resources__pkg__apt = {
  name : string prop;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by Apt. *)

type os_policies__resource_groups__resources__pkg__deb__source__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__pkg__deb__source__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__pkg__deb__source = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__pkg__deb__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__deb__source__remote
    list;
}
[@@deriving yojson_of]
(** A deb package. *)

type os_policies__resource_groups__resources__pkg__deb = {
  pull_deps : bool prop option; [@option]
      (** Whether dependencies should also be installed. - install when false: 'dpkg -i package' - install when true: 'apt-get update && apt-get -y install package.deb' *)
  source :
    os_policies__resource_groups__resources__pkg__deb__source list;
}
[@@deriving yojson_of]
(** A deb package file. *)

type os_policies__resource_groups__resources__pkg__googet = {
  name : string prop;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by GooGet. *)

type os_policies__resource_groups__resources__pkg__msi__source__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__pkg__msi__source__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__pkg__msi__source = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__pkg__msi__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__msi__source__remote
    list;
}
[@@deriving yojson_of]
(** The MSI package. *)

type os_policies__resource_groups__resources__pkg__msi = {
  properties : string prop list option; [@option]
      (** Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of 'ACTION=INSTALL REBOOT=ReallySuppress'. *)
  source :
    os_policies__resource_groups__resources__pkg__msi__source list;
}
[@@deriving yojson_of]
(** An MSI package. *)

type os_policies__resource_groups__resources__pkg__rpm__source__gcs = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation : float prop option; [@option]
      (** Generation number of the Cloud Storage object. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object. *)

type os_policies__resource_groups__resources__pkg__rpm__source__remote = {
  sha256_checksum : string prop option; [@option]
      (** SHA256 checksum of the remote file. *)
  uri : string prop;
      (** URI from which to fetch the object. It should contain both the protocol and path following the format '{protocol}://{location}'. *)
}
[@@deriving yojson_of]
(** A generic remote file. *)

type os_policies__resource_groups__resources__pkg__rpm__source = {
  allow_insecure : bool prop option; [@option]
      (** Defaults to false. When false, files are subject to validations based on the file type:
Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. *)
  local_path : string prop option; [@option]
      (** A local path within the VM to use. *)
  gcs :
    os_policies__resource_groups__resources__pkg__rpm__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__rpm__source__remote
    list;
}
[@@deriving yojson_of]
(** An rpm package. *)

type os_policies__resource_groups__resources__pkg__rpm = {
  pull_deps : bool prop option; [@option]
      (** Whether dependencies should also be installed. - install when false: 'rpm --upgrade --replacepkgs package.rpm' - install when true: 'yum -y install package.rpm' or 'zypper -y install package.rpm' *)
  source :
    os_policies__resource_groups__resources__pkg__rpm__source list;
}
[@@deriving yojson_of]
(** An rpm package file. *)

type os_policies__resource_groups__resources__pkg__yum = {
  name : string prop;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by YUM. *)

type os_policies__resource_groups__resources__pkg__zypper = {
  name : string prop;  (** Package name. *)
}
[@@deriving yojson_of]
(** A package managed by Zypper. *)

type os_policies__resource_groups__resources__pkg = {
  desired_state : string prop;
      (** The desired state the agent should maintain for this package. Possible values: [DESIRED_STATE_UNSPECIFIED, INSTALLED, REMOVED] *)
  apt : os_policies__resource_groups__resources__pkg__apt list;
  deb : os_policies__resource_groups__resources__pkg__deb list;
  googet : os_policies__resource_groups__resources__pkg__googet list;
  msi : os_policies__resource_groups__resources__pkg__msi list;
  rpm : os_policies__resource_groups__resources__pkg__rpm list;
  yum : os_policies__resource_groups__resources__pkg__yum list;
  zypper : os_policies__resource_groups__resources__pkg__zypper list;
}
[@@deriving yojson_of]
(** Package resource *)

type os_policies__resource_groups__resources__repository__apt = {
  archive_type : string prop;
      (** Type of archive files in this repository. Possible values: [ARCHIVE_TYPE_UNSPECIFIED, DEB, DEB_SRC] *)
  components : string prop list;
      (** List of components for this repository. Must contain at least one item. *)
  distribution : string prop;
      (** Distribution of this repository. *)
  gpg_key : string prop option; [@option]
      (** URI of the key file for this repository. The agent maintains a keyring at '/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg'. *)
  uri : string prop;  (** URI for this repository. *)
}
[@@deriving yojson_of]
(** An Apt Repository. *)

type os_policies__resource_groups__resources__repository__goo = {
  name : string prop;  (** The name of the repository. *)
  url : string prop;  (** The url of the repository. *)
}
[@@deriving yojson_of]
(** A Goo Repository. *)

type os_policies__resource_groups__resources__repository__yum = {
  base_url : string prop;
      (** The location of the repository directory. *)
  display_name : string prop option; [@option]
      (** The display name of the repository. *)
  gpg_keys : string prop list option; [@option]
      (** URIs of GPG keys. *)
  id : string prop;
      (** A one word, unique name for this repository. This is the 'repo id' in the yum config file and also the 'display_name' if 'display_name' is omitted. This id is also used as the unique identifier when checking for resource conflicts. *)
}
[@@deriving yojson_of]
(** A Yum Repository. *)

type os_policies__resource_groups__resources__repository__zypper = {
  base_url : string prop;
      (** The location of the repository directory. *)
  display_name : string prop option; [@option]
      (** The display name of the repository. *)
  gpg_keys : string prop list option; [@option]
      (** URIs of GPG keys. *)
  id : string prop;
      (** A one word, unique name for this repository. This is the 'repo id' in the zypper config file and also the 'display_name' if 'display_name' is omitted. This id is also used as the unique identifier when checking for GuestPolicy conflicts. *)
}
[@@deriving yojson_of]
(** A Zypper Repository. *)

type os_policies__resource_groups__resources__repository = {
  apt :
    os_policies__resource_groups__resources__repository__apt list;
  goo :
    os_policies__resource_groups__resources__repository__goo list;
  yum :
    os_policies__resource_groups__resources__repository__yum list;
  zypper :
    os_policies__resource_groups__resources__repository__zypper list;
}
[@@deriving yojson_of]
(** Package repository resource *)

type os_policies__resource_groups__resources = {
  id : string prop;
      (** The id of the resource with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the OS policy. *)
  exec : os_policies__resource_groups__resources__exec list;
  file : os_policies__resource_groups__resources__file list;
  pkg : os_policies__resource_groups__resources__pkg list;
  repository :
    os_policies__resource_groups__resources__repository list;
}
[@@deriving yojson_of]
(** List of resources configured for this resource group. The resources are executed in the exact order specified here. *)

type os_policies__resource_groups = {
  inventory_filters :
    os_policies__resource_groups__inventory_filters list;
  resources : os_policies__resource_groups__resources list;
}
[@@deriving yojson_of]
(** List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored.
If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag 'allow_no_resource_group_match' *)

type os_policies = {
  allow_no_resource_group_match : bool prop option; [@option]
      (** This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to 'true' if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce. *)
  description : string prop option; [@option]
      (** Policy description. Length of the description is limited to 1024 characters. *)
  id : string prop;
      (** The id of the OS policy with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the assignment. *)
  mode : string prop;
      (** Policy mode Possible values: [MODE_UNSPECIFIED, VALIDATION, ENFORCEMENT] *)
  resource_groups : os_policies__resource_groups list;
}
[@@deriving yojson_of]
(** List of OS policies to be applied to the VMs. *)

type rollout__disruption_budget = {
  fixed : float prop option; [@option]
      (** Specifies a fixed value. *)
  percent : float prop option; [@option]
      (** Specifies the relative value defined as a percentage, which will be multiplied by a reference value. *)
}
[@@deriving yojson_of]
(** The maximum number (or percentage) of VMs per zone to disrupt at any given moment. *)

type rollout = {
  min_wait_duration : string prop;
      (** This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the 'disruption_budget' at least until this duration of time has passed after configuration changes are applied. *)
  disruption_budget : rollout__disruption_budget list;
}
[@@deriving yojson_of]
(** Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_os_config_os_policy_assignment = {
  description : string prop option; [@option]
      (** OS policy assignment description. Length of the description is limited to 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** Resource name. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  skip_await_rollout : bool prop option; [@option]
      (** Set to true to skip awaiting rollout during resource creation and update. *)
  instance_filter : instance_filter list;
  os_policies : os_policies list;
  rollout : rollout list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_os_config_os_policy_assignment *)

let instance_filter__exclusion_labels ?labels () :
    instance_filter__exclusion_labels =
  { labels }

let instance_filter__inclusion_labels ?labels () :
    instance_filter__inclusion_labels =
  { labels }

let instance_filter__inventories ?os_version ~os_short_name () :
    instance_filter__inventories =
  { os_short_name; os_version }

let instance_filter ?all ~exclusion_labels ~inclusion_labels
    ~inventories () : instance_filter =
  { all; exclusion_labels; inclusion_labels; inventories }

let os_policies__resource_groups__inventory_filters ?os_version
    ~os_short_name () :
    os_policies__resource_groups__inventory_filters =
  { os_short_name; os_version }

let os_policies__resource_groups__resources__exec__enforce__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__exec__enforce__file__gcs
    =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__exec__enforce__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__exec__enforce__file__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__exec__enforce__file
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__exec__enforce__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__exec__enforce ?args
    ?output_file_path ?script ~interpreter ~file () :
    os_policies__resource_groups__resources__exec__enforce =
  { args; interpreter; output_file_path; script; file }

let os_policies__resource_groups__resources__exec__validate__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__exec__validate__file__gcs
    =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__exec__validate__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__exec__validate__file__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__exec__validate__file
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__exec__validate__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__exec__validate ?args
    ?output_file_path ?script ~interpreter ~file () :
    os_policies__resource_groups__resources__exec__validate =
  { args; interpreter; output_file_path; script; file }

let os_policies__resource_groups__resources__exec ~enforce ~validate
    () : os_policies__resource_groups__resources__exec =
  { enforce; validate }

let os_policies__resource_groups__resources__file__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__file__file__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__file__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__file__file__remote =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__file__file
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__file__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__file ?content ~path
    ~state ~file () : os_policies__resource_groups__resources__file =
  { content; path; state; file }

let os_policies__resource_groups__resources__pkg__apt ~name () :
    os_policies__resource_groups__resources__pkg__apt =
  { name }

let os_policies__resource_groups__resources__pkg__deb__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__deb__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__deb__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__deb__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__deb__source
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__pkg__deb__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__deb ?pull_deps
    ~source () : os_policies__resource_groups__resources__pkg__deb =
  { pull_deps; source }

let os_policies__resource_groups__resources__pkg__googet ~name () :
    os_policies__resource_groups__resources__pkg__googet =
  { name }

let os_policies__resource_groups__resources__pkg__msi__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__msi__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__msi__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__msi__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__msi__source
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__pkg__msi__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__msi ?properties
    ~source () : os_policies__resource_groups__resources__pkg__msi =
  { properties; source }

let os_policies__resource_groups__resources__pkg__rpm__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__rpm__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__rpm__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__rpm__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__rpm__source
    ?allow_insecure ?local_path ~gcs ~remote () :
    os_policies__resource_groups__resources__pkg__rpm__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__rpm ?pull_deps
    ~source () : os_policies__resource_groups__resources__pkg__rpm =
  { pull_deps; source }

let os_policies__resource_groups__resources__pkg__yum ~name () :
    os_policies__resource_groups__resources__pkg__yum =
  { name }

let os_policies__resource_groups__resources__pkg__zypper ~name () :
    os_policies__resource_groups__resources__pkg__zypper =
  { name }

let os_policies__resource_groups__resources__pkg ~desired_state ~apt
    ~deb ~googet ~msi ~rpm ~yum ~zypper () :
    os_policies__resource_groups__resources__pkg =
  { desired_state; apt; deb; googet; msi; rpm; yum; zypper }

let os_policies__resource_groups__resources__repository__apt ?gpg_key
    ~archive_type ~components ~distribution ~uri () :
    os_policies__resource_groups__resources__repository__apt =
  { archive_type; components; distribution; gpg_key; uri }

let os_policies__resource_groups__resources__repository__goo ~name
    ~url () :
    os_policies__resource_groups__resources__repository__goo =
  { name; url }

let os_policies__resource_groups__resources__repository__yum
    ?display_name ?gpg_keys ~base_url ~id () :
    os_policies__resource_groups__resources__repository__yum =
  { base_url; display_name; gpg_keys; id }

let os_policies__resource_groups__resources__repository__zypper
    ?display_name ?gpg_keys ~base_url ~id () :
    os_policies__resource_groups__resources__repository__zypper =
  { base_url; display_name; gpg_keys; id }

let os_policies__resource_groups__resources__repository ~apt ~goo
    ~yum ~zypper () :
    os_policies__resource_groups__resources__repository =
  { apt; goo; yum; zypper }

let os_policies__resource_groups__resources ~id ~exec ~file ~pkg
    ~repository () : os_policies__resource_groups__resources =
  { id; exec; file; pkg; repository }

let os_policies__resource_groups ~inventory_filters ~resources () :
    os_policies__resource_groups =
  { inventory_filters; resources }

let os_policies ?allow_no_resource_group_match ?description ~id ~mode
    ~resource_groups () : os_policies =
  {
    allow_no_resource_group_match;
    description;
    id;
    mode;
    resource_groups;
  }

let rollout__disruption_budget ?fixed ?percent () :
    rollout__disruption_budget =
  { fixed; percent }

let rollout ~min_wait_duration ~disruption_budget () : rollout =
  { min_wait_duration; disruption_budget }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_os_config_os_policy_assignment ?description ?id ?project
    ?skip_await_rollout ?timeouts ~location ~name ~instance_filter
    ~os_policies ~rollout () : google_os_config_os_policy_assignment
    =
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

type t = {
  baseline : bool prop;
  deleted : bool prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  revision_create_time : string prop;
  revision_id : string prop;
  rollout_state : string prop;
  skip_await_rollout : bool prop;
  uid : string prop;
}

let make ?description ?id ?project ?skip_await_rollout ?timeouts
    ~location ~name ~instance_filter ~os_policies ~rollout __id =
  let __type = "google_os_config_os_policy_assignment" in
  let __attrs =
    ({
       baseline = Prop.computed __type __id "baseline";
       deleted = Prop.computed __type __id "deleted";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       revision_create_time =
         Prop.computed __type __id "revision_create_time";
       revision_id = Prop.computed __type __id "revision_id";
       rollout_state = Prop.computed __type __id "rollout_state";
       skip_await_rollout =
         Prop.computed __type __id "skip_await_rollout";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_os_config_os_policy_assignment
        (google_os_config_os_policy_assignment ?description ?id
           ?project ?skip_await_rollout ?timeouts ~location ~name
           ~instance_filter ~os_policies ~rollout ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?skip_await_rollout
    ?timeouts ~location ~name ~instance_filter ~os_policies ~rollout
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?skip_await_rollout ?timeouts
      ~location ~name ~instance_filter ~os_policies ~rollout __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
