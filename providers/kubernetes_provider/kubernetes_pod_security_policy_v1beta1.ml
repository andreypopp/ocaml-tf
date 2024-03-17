(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_pod_security_policy_v1beta1__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the podsecuritypolicy that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the podsecuritypolicy. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the podsecuritypolicy, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this podsecuritypolicy that can be used by clients to determine when podsecuritypolicy has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this podsecuritypolicy. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard podsecuritypolicy's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_pod_security_policy_v1beta1__spec__allowed_flex_volumes = {
  driver : string prop;
      (** driver is the name of the Flexvolume driver. *)
}
[@@deriving yojson_of]
(** allowedFlexVolumes is an allowlist of Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the volumes field. *)

type kubernetes_pod_security_policy_v1beta1__spec__allowed_host_paths = {
  path_prefix : string prop;
      (** pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.

Examples: `/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo` *)
  read_only : bool prop option; [@option]
      (** when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly. *)
}
[@@deriving yojson_of]
(** allowedHostPaths is an allowlist of host paths. Empty indicates that all host paths may be used. *)

type kubernetes_pod_security_policy_v1beta1__spec__fs_group__range = {
  max : float prop;  (** max is the end of the range, inclusive. *)
  min : float prop;  (** min is the start of the range, inclusive. *)
}
[@@deriving yojson_of]
(** ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs. *)

type kubernetes_pod_security_policy_v1beta1__spec__fs_group = {
  rule : string prop;
      (** rule is the strategy that will dictate what FSGroup is used in the SecurityContext. *)
  range :
    kubernetes_pod_security_policy_v1beta1__spec__fs_group__range
    list;
}
[@@deriving yojson_of]
(** fsGroup is the strategy that will dictate what fs group is used by the SecurityContext. *)

type kubernetes_pod_security_policy_v1beta1__spec__host_ports = {
  max : float prop;  (** max is the end of the range, inclusive. *)
  min : float prop;  (** min is the start of the range, inclusive. *)
}
[@@deriving yojson_of]
(** hostPorts determines which host port ranges are allowed to be exposed. *)

type kubernetes_pod_security_policy_v1beta1__spec__run_as_group__range = {
  max : float prop;  (** max is the end of the range, inclusive. *)
  min : float prop;  (** min is the start of the range, inclusive. *)
}
[@@deriving yojson_of]
(** ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs. *)

type kubernetes_pod_security_policy_v1beta1__spec__run_as_group = {
  rule : string prop;
      (** rule is the strategy that will dictate the allowable RunAsGroup values that may be set. *)
  range :
    kubernetes_pod_security_policy_v1beta1__spec__run_as_group__range
    list;
}
[@@deriving yojson_of]
(** RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled. *)

type kubernetes_pod_security_policy_v1beta1__spec__run_as_user__range = {
  max : float prop;  (** max is the end of the range, inclusive. *)
  min : float prop;  (** min is the start of the range, inclusive. *)
}
[@@deriving yojson_of]
(** ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs. *)

type kubernetes_pod_security_policy_v1beta1__spec__run_as_user = {
  rule : string prop;
      (** rule is the strategy that will dictate the allowable RunAsUser values that may be set. *)
  range :
    kubernetes_pod_security_policy_v1beta1__spec__run_as_user__range
    list;
}
[@@deriving yojson_of]
(** runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set. *)

type kubernetes_pod_security_policy_v1beta1__spec__se_linux__se_linux_options = {
  level : string prop;  (** level *)
  role : string prop;  (** role *)
  type_ : string prop; [@key "type"]  (** type *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ *)

type kubernetes_pod_security_policy_v1beta1__spec__se_linux = {
  rule : string prop;
      (** rule is the strategy that will dictate the allowable labels that may be set. *)
  se_linux_options :
    kubernetes_pod_security_policy_v1beta1__spec__se_linux__se_linux_options
    list;
}
[@@deriving yojson_of]
(** seLinux is the strategy that will dictate the allowable labels that may be set. *)

type kubernetes_pod_security_policy_v1beta1__spec__supplemental_groups__range = {
  max : float prop;  (** max is the end of the range, inclusive. *)
  min : float prop;  (** min is the start of the range, inclusive. *)
}
[@@deriving yojson_of]
(** ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs. *)

type kubernetes_pod_security_policy_v1beta1__spec__supplemental_groups = {
  rule : string prop;
      (** rule is the strategy that will dictate what supplemental groups is used in the SecurityContext. *)
  range :
    kubernetes_pod_security_policy_v1beta1__spec__supplemental_groups__range
    list;
}
[@@deriving yojson_of]
(** supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext. *)

type kubernetes_pod_security_policy_v1beta1__spec = {
  allow_privilege_escalation : bool prop option; [@option]
      (** allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true. *)
  allowed_capabilities : string prop list option; [@option]
      (** allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities. *)
  allowed_proc_mount_types : string prop list option; [@option]
      (** AllowedProcMountTypes is an allowlist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled. *)
  allowed_unsafe_sysctls : string prop list option; [@option]
      (** allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in * in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to allowlist all allowed unsafe sysctls explicitly to avoid rejection.

Examples: e.g. foo/* allows foo/bar, foo/baz, etc. e.g. foo.* allows foo.bar, foo.baz, etc. *)
  default_add_capabilities : string prop list option; [@option]
      (** defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list. *)
  default_allow_privilege_escalation : bool prop option; [@option]
      (** defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process. *)
  forbidden_sysctls : string prop list option; [@option]
      (** forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in * in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.

Examples: e.g. foo/* forbids foo/bar, foo/baz, etc. e.g. foo.* forbids foo.bar, foo.baz, etc. *)
  host_ipc : bool prop option; [@option]
      (** hostIPC determines if the policy allows the use of HostIPC in the pod spec. *)
  host_network : bool prop option; [@option]
      (** hostNetwork determines if the policy allows the use of HostNetwork in the pod spec. *)
  host_pid : bool prop option; [@option]
      (** hostPID determines if the policy allows the use of HostPID in the pod spec. *)
  privileged : bool prop option; [@option]
      (** privileged determines if a pod can request to be run as privileged. *)
  read_only_root_filesystem : bool prop option; [@option]
      (** readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to. *)
  required_drop_capabilities : string prop list option; [@option]
      (** requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added. *)
  volumes : string prop list option; [@option]
      (** volumes is an allowlist of volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'. *)
  allowed_flex_volumes :
    kubernetes_pod_security_policy_v1beta1__spec__allowed_flex_volumes
    list;
  allowed_host_paths :
    kubernetes_pod_security_policy_v1beta1__spec__allowed_host_paths
    list;
  fs_group :
    kubernetes_pod_security_policy_v1beta1__spec__fs_group list;
  host_ports :
    kubernetes_pod_security_policy_v1beta1__spec__host_ports list;
  run_as_group :
    kubernetes_pod_security_policy_v1beta1__spec__run_as_group list;
  run_as_user :
    kubernetes_pod_security_policy_v1beta1__spec__run_as_user list;
  se_linux :
    kubernetes_pod_security_policy_v1beta1__spec__se_linux list;
  supplemental_groups :
    kubernetes_pod_security_policy_v1beta1__spec__supplemental_groups
    list;
}
[@@deriving yojson_of]
(** spec defines the policy enforced. *)

type kubernetes_pod_security_policy_v1beta1 = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_pod_security_policy_v1beta1__metadata list;
  spec : kubernetes_pod_security_policy_v1beta1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_pod_security_policy_v1beta1 *)

let kubernetes_pod_security_policy_v1beta1 ?id ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_pod_security_policy_v1beta1" in
  let __resource = { id; metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_pod_security_policy_v1beta1 __resource);
  ()
