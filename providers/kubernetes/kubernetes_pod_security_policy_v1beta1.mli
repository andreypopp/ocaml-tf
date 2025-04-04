(** A Pod Security Policy is a cluster-level resource that controls security sensitive aspects of the pod specification. The PodSecurityPolicy objects define a set of conditions that a pod must run with in order to be accepted into the system, as well as defaults for the related fields. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type spec__allowed_flex_volumes

val spec__allowed_flex_volumes :
  driver:string prop -> unit -> spec__allowed_flex_volumes

type spec__allowed_host_paths

val spec__allowed_host_paths :
  ?read_only:bool prop ->
  path_prefix:string prop ->
  unit ->
  spec__allowed_host_paths

type spec__fs_group__range

val spec__fs_group__range :
  max:float prop -> min:float prop -> unit -> spec__fs_group__range

type spec__fs_group

val spec__fs_group :
  ?range:spec__fs_group__range list ->
  rule:string prop ->
  unit ->
  spec__fs_group

type spec__host_ports

val spec__host_ports :
  max:float prop -> min:float prop -> unit -> spec__host_ports

type spec__run_as_group__range

val spec__run_as_group__range :
  max:float prop ->
  min:float prop ->
  unit ->
  spec__run_as_group__range

type spec__run_as_group

val spec__run_as_group :
  ?range:spec__run_as_group__range list ->
  rule:string prop ->
  unit ->
  spec__run_as_group

type spec__run_as_user__range

val spec__run_as_user__range :
  max:float prop ->
  min:float prop ->
  unit ->
  spec__run_as_user__range

type spec__run_as_user

val spec__run_as_user :
  ?range:spec__run_as_user__range list ->
  rule:string prop ->
  unit ->
  spec__run_as_user

type spec__se_linux__se_linux_options

val spec__se_linux__se_linux_options :
  level:string prop ->
  role:string prop ->
  type_:string prop ->
  user:string prop ->
  unit ->
  spec__se_linux__se_linux_options

type spec__se_linux

val spec__se_linux :
  ?se_linux_options:spec__se_linux__se_linux_options list ->
  rule:string prop ->
  unit ->
  spec__se_linux

type spec__supplemental_groups__range

val spec__supplemental_groups__range :
  max:float prop ->
  min:float prop ->
  unit ->
  spec__supplemental_groups__range

type spec__supplemental_groups

val spec__supplemental_groups :
  ?range:spec__supplemental_groups__range list ->
  rule:string prop ->
  unit ->
  spec__supplemental_groups

type spec

val spec :
  ?allow_privilege_escalation:bool prop ->
  ?allowed_capabilities:string prop list ->
  ?allowed_proc_mount_types:string prop list ->
  ?allowed_unsafe_sysctls:string prop list ->
  ?default_add_capabilities:string prop list ->
  ?default_allow_privilege_escalation:bool prop ->
  ?forbidden_sysctls:string prop list ->
  ?host_ipc:bool prop ->
  ?host_network:bool prop ->
  ?host_pid:bool prop ->
  ?privileged:bool prop ->
  ?read_only_root_filesystem:bool prop ->
  ?required_drop_capabilities:string prop list ->
  ?volumes:string prop list ->
  ?allowed_flex_volumes:spec__allowed_flex_volumes list ->
  ?allowed_host_paths:spec__allowed_host_paths list ->
  ?host_ports:spec__host_ports list ->
  ?run_as_group:spec__run_as_group list ->
  ?se_linux:spec__se_linux list ->
  fs_group:spec__fs_group list ->
  run_as_user:spec__run_as_user list ->
  supplemental_groups:spec__supplemental_groups list ->
  unit ->
  spec

type kubernetes_pod_security_policy_v1beta1

val kubernetes_pod_security_policy_v1beta1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_pod_security_policy_v1beta1

val yojson_of_kubernetes_pod_security_policy_v1beta1 :
  kubernetes_pod_security_policy_v1beta1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
