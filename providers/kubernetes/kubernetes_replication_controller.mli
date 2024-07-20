(** A Replication Controller ensures that a specified number of pod “replicas” are running at any one time. In other words, a Replication Controller makes sure that a pod or homogeneous set of pods are always up and available. If there are too many pods, it will kill some. If there are too few, the Replication Controller will start more. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__template__metadata

val spec__template__metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__template__metadata

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions

val spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields

val spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields :
  ?values:string prop list ->
  key:string prop ->
  operator:string prop ->
  unit ->
  spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference

val spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference :
  ?match_expressions:
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    list ->
  ?match_fields:
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    list ->
  unit ->
  spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution :
  weight:float prop ->
  preference:
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    list ->
  unit ->
  spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions

val spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields

val spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields :
  ?values:string prop list ->
  key:string prop ->
  operator:string prop ->
  unit ->
  spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term

val spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term :
  ?match_expressions:
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    list ->
  ?match_fields:
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    list ->
  unit ->
  spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution :
  ?node_selector_term:
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    list ->
  unit ->
  spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__node_affinity

val spec__template__spec__affinity__node_affinity :
  ?preferred_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    list ->
  ?required_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    list ->
  unit ->
  spec__template__spec__affinity__node_affinity

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

val spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

val spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list ->
  unit ->
  spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

val spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term :
  ?namespaces:string prop list ->
  ?label_selector:
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list ->
  topology_key:string prop ->
  unit ->
  spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution :
  weight:float prop ->
  pod_affinity_term:
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list ->
  unit ->
  spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

val spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector

val spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list ->
  unit ->
  spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution :
  ?namespaces:string prop list ->
  ?label_selector:
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list ->
  topology_key:string prop ->
  unit ->
  spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__pod_affinity

val spec__template__spec__affinity__pod_affinity :
  ?preferred_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    list ->
  ?required_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    list ->
  unit ->
  spec__template__spec__affinity__pod_affinity

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

val spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

val spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

val spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term :
  ?namespaces:string prop list ->
  ?label_selector:
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list ->
  topology_key:string prop ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution :
  weight:float prop ->
  pod_affinity_term:
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

val spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector

val spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution

val spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution :
  ?namespaces:string prop list ->
  ?label_selector:
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list ->
  topology_key:string prop ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution

type spec__template__spec__affinity__pod_anti_affinity

val spec__template__spec__affinity__pod_anti_affinity :
  ?preferred_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    list ->
  ?required_during_scheduling_ignored_during_execution:
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    list ->
  unit ->
  spec__template__spec__affinity__pod_anti_affinity

type spec__template__spec__affinity

val spec__template__spec__affinity :
  ?node_affinity:spec__template__spec__affinity__node_affinity list ->
  ?pod_affinity:spec__template__spec__affinity__pod_affinity list ->
  ?pod_anti_affinity:
    spec__template__spec__affinity__pod_anti_affinity list ->
  unit ->
  spec__template__spec__affinity

type spec__template__spec__container__env__value_from__config_map_key_ref

val spec__template__spec__container__env__value_from__config_map_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  spec__template__spec__container__env__value_from__config_map_key_ref

type spec__template__spec__container__env__value_from__field_ref

val spec__template__spec__container__env__value_from__field_ref :
  ?api_version:string prop ->
  ?field_path:string prop ->
  unit ->
  spec__template__spec__container__env__value_from__field_ref

type spec__template__spec__container__env__value_from__resource_field_ref

val spec__template__spec__container__env__value_from__resource_field_ref :
  ?container_name:string prop ->
  ?divisor:string prop ->
  resource:string prop ->
  unit ->
  spec__template__spec__container__env__value_from__resource_field_ref

type spec__template__spec__container__env__value_from__secret_key_ref

val spec__template__spec__container__env__value_from__secret_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  spec__template__spec__container__env__value_from__secret_key_ref

type spec__template__spec__container__env__value_from

val spec__template__spec__container__env__value_from :
  ?config_map_key_ref:
    spec__template__spec__container__env__value_from__config_map_key_ref
    list ->
  ?field_ref:
    spec__template__spec__container__env__value_from__field_ref list ->
  ?resource_field_ref:
    spec__template__spec__container__env__value_from__resource_field_ref
    list ->
  ?secret_key_ref:
    spec__template__spec__container__env__value_from__secret_key_ref
    list ->
  unit ->
  spec__template__spec__container__env__value_from

type spec__template__spec__container__env

val spec__template__spec__container__env :
  ?value:string prop ->
  ?value_from:spec__template__spec__container__env__value_from list ->
  name:string prop ->
  unit ->
  spec__template__spec__container__env

type spec__template__spec__container__env_from__config_map_ref

val spec__template__spec__container__env_from__config_map_ref :
  ?optional:bool prop ->
  name:string prop ->
  unit ->
  spec__template__spec__container__env_from__config_map_ref

type spec__template__spec__container__env_from__secret_ref

val spec__template__spec__container__env_from__secret_ref :
  ?optional:bool prop ->
  name:string prop ->
  unit ->
  spec__template__spec__container__env_from__secret_ref

type spec__template__spec__container__env_from

val spec__template__spec__container__env_from :
  ?prefix:string prop ->
  ?config_map_ref:
    spec__template__spec__container__env_from__config_map_ref list ->
  ?secret_ref:
    spec__template__spec__container__env_from__secret_ref list ->
  unit ->
  spec__template__spec__container__env_from

type spec__template__spec__container__lifecycle__post_start__exec

val spec__template__spec__container__lifecycle__post_start__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__container__lifecycle__post_start__exec

type spec__template__spec__container__lifecycle__post_start__http_get__http_header

val spec__template__spec__container__lifecycle__post_start__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__container__lifecycle__post_start__http_get__http_header

type spec__template__spec__container__lifecycle__post_start__http_get

val spec__template__spec__container__lifecycle__post_start__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__container__lifecycle__post_start__http_get__http_header
    list ->
  unit ->
  spec__template__spec__container__lifecycle__post_start__http_get

type spec__template__spec__container__lifecycle__post_start__tcp_socket

val spec__template__spec__container__lifecycle__post_start__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__container__lifecycle__post_start__tcp_socket

type spec__template__spec__container__lifecycle__post_start

val spec__template__spec__container__lifecycle__post_start :
  ?exec:
    spec__template__spec__container__lifecycle__post_start__exec list ->
  ?http_get:
    spec__template__spec__container__lifecycle__post_start__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__container__lifecycle__post_start__tcp_socket
    list ->
  unit ->
  spec__template__spec__container__lifecycle__post_start

type spec__template__spec__container__lifecycle__pre_stop__exec

val spec__template__spec__container__lifecycle__pre_stop__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__container__lifecycle__pre_stop__exec

type spec__template__spec__container__lifecycle__pre_stop__http_get__http_header

val spec__template__spec__container__lifecycle__pre_stop__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__container__lifecycle__pre_stop__http_get__http_header

type spec__template__spec__container__lifecycle__pre_stop__http_get

val spec__template__spec__container__lifecycle__pre_stop__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    list ->
  unit ->
  spec__template__spec__container__lifecycle__pre_stop__http_get

type spec__template__spec__container__lifecycle__pre_stop__tcp_socket

val spec__template__spec__container__lifecycle__pre_stop__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__container__lifecycle__pre_stop__tcp_socket

type spec__template__spec__container__lifecycle__pre_stop

val spec__template__spec__container__lifecycle__pre_stop :
  ?exec:
    spec__template__spec__container__lifecycle__pre_stop__exec list ->
  ?http_get:
    spec__template__spec__container__lifecycle__pre_stop__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    list ->
  unit ->
  spec__template__spec__container__lifecycle__pre_stop

type spec__template__spec__container__lifecycle

val spec__template__spec__container__lifecycle :
  ?post_start:
    spec__template__spec__container__lifecycle__post_start list ->
  ?pre_stop:spec__template__spec__container__lifecycle__pre_stop list ->
  unit ->
  spec__template__spec__container__lifecycle

type spec__template__spec__container__liveness_probe__exec

val spec__template__spec__container__liveness_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__container__liveness_probe__exec

type spec__template__spec__container__liveness_probe__grpc

val spec__template__spec__container__liveness_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__container__liveness_probe__grpc

type spec__template__spec__container__liveness_probe__http_get__http_header

val spec__template__spec__container__liveness_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__container__liveness_probe__http_get__http_header

type spec__template__spec__container__liveness_probe__http_get

val spec__template__spec__container__liveness_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__container__liveness_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__container__liveness_probe__http_get

type spec__template__spec__container__liveness_probe__tcp_socket

val spec__template__spec__container__liveness_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__container__liveness_probe__tcp_socket

type spec__template__spec__container__liveness_probe

val spec__template__spec__container__liveness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:spec__template__spec__container__liveness_probe__exec list ->
  ?grpc:spec__template__spec__container__liveness_probe__grpc list ->
  ?http_get:
    spec__template__spec__container__liveness_probe__http_get list ->
  ?tcp_socket:
    spec__template__spec__container__liveness_probe__tcp_socket list ->
  unit ->
  spec__template__spec__container__liveness_probe

type spec__template__spec__container__port

val spec__template__spec__container__port :
  ?host_ip:string prop ->
  ?host_port:float prop ->
  ?name:string prop ->
  ?protocol:string prop ->
  container_port:float prop ->
  unit ->
  spec__template__spec__container__port

type spec__template__spec__container__readiness_probe__exec

val spec__template__spec__container__readiness_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__container__readiness_probe__exec

type spec__template__spec__container__readiness_probe__grpc

val spec__template__spec__container__readiness_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__container__readiness_probe__grpc

type spec__template__spec__container__readiness_probe__http_get__http_header

val spec__template__spec__container__readiness_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__container__readiness_probe__http_get__http_header

type spec__template__spec__container__readiness_probe__http_get

val spec__template__spec__container__readiness_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__container__readiness_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__container__readiness_probe__http_get

type spec__template__spec__container__readiness_probe__tcp_socket

val spec__template__spec__container__readiness_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__container__readiness_probe__tcp_socket

type spec__template__spec__container__readiness_probe

val spec__template__spec__container__readiness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:spec__template__spec__container__readiness_probe__exec list ->
  ?grpc:spec__template__spec__container__readiness_probe__grpc list ->
  ?http_get:
    spec__template__spec__container__readiness_probe__http_get list ->
  ?tcp_socket:
    spec__template__spec__container__readiness_probe__tcp_socket list ->
  unit ->
  spec__template__spec__container__readiness_probe

type spec__template__spec__container__resources

val spec__template__spec__container__resources :
  ?limits:(string * string prop) list ->
  ?requests:(string * string prop) list ->
  unit ->
  spec__template__spec__container__resources

type spec__template__spec__container__security_context__capabilities

val spec__template__spec__container__security_context__capabilities :
  ?add:string prop list ->
  ?drop:string prop list ->
  unit ->
  spec__template__spec__container__security_context__capabilities

type spec__template__spec__container__security_context__se_linux_options

val spec__template__spec__container__security_context__se_linux_options :
  ?level:string prop ->
  ?role:string prop ->
  ?type_:string prop ->
  ?user:string prop ->
  unit ->
  spec__template__spec__container__security_context__se_linux_options

type spec__template__spec__container__security_context__seccomp_profile

val spec__template__spec__container__security_context__seccomp_profile :
  ?localhost_profile:string prop ->
  ?type_:string prop ->
  unit ->
  spec__template__spec__container__security_context__seccomp_profile

type spec__template__spec__container__security_context

val spec__template__spec__container__security_context :
  ?allow_privilege_escalation:bool prop ->
  ?privileged:bool prop ->
  ?read_only_root_filesystem:bool prop ->
  ?run_as_group:string prop ->
  ?run_as_non_root:bool prop ->
  ?run_as_user:string prop ->
  ?capabilities:
    spec__template__spec__container__security_context__capabilities
    list ->
  ?se_linux_options:
    spec__template__spec__container__security_context__se_linux_options
    list ->
  ?seccomp_profile:
    spec__template__spec__container__security_context__seccomp_profile
    list ->
  unit ->
  spec__template__spec__container__security_context

type spec__template__spec__container__startup_probe__exec

val spec__template__spec__container__startup_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__container__startup_probe__exec

type spec__template__spec__container__startup_probe__grpc

val spec__template__spec__container__startup_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__container__startup_probe__grpc

type spec__template__spec__container__startup_probe__http_get__http_header

val spec__template__spec__container__startup_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__container__startup_probe__http_get__http_header

type spec__template__spec__container__startup_probe__http_get

val spec__template__spec__container__startup_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__container__startup_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__container__startup_probe__http_get

type spec__template__spec__container__startup_probe__tcp_socket

val spec__template__spec__container__startup_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__container__startup_probe__tcp_socket

type spec__template__spec__container__startup_probe

val spec__template__spec__container__startup_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:spec__template__spec__container__startup_probe__exec list ->
  ?grpc:spec__template__spec__container__startup_probe__grpc list ->
  ?http_get:
    spec__template__spec__container__startup_probe__http_get list ->
  ?tcp_socket:
    spec__template__spec__container__startup_probe__tcp_socket list ->
  unit ->
  spec__template__spec__container__startup_probe

type spec__template__spec__container__volume_mount

val spec__template__spec__container__volume_mount :
  ?mount_propagation:string prop ->
  ?read_only:bool prop ->
  ?sub_path:string prop ->
  mount_path:string prop ->
  name:string prop ->
  unit ->
  spec__template__spec__container__volume_mount

type spec__template__spec__container

val spec__template__spec__container :
  ?args:string prop list ->
  ?command:string prop list ->
  ?image:string prop ->
  ?image_pull_policy:string prop ->
  ?stdin:bool prop ->
  ?stdin_once:bool prop ->
  ?termination_message_path:string prop ->
  ?termination_message_policy:string prop ->
  ?tty:bool prop ->
  ?working_dir:string prop ->
  ?env:spec__template__spec__container__env list ->
  ?env_from:spec__template__spec__container__env_from list ->
  ?lifecycle:spec__template__spec__container__lifecycle list ->
  ?liveness_probe:
    spec__template__spec__container__liveness_probe list ->
  ?port:spec__template__spec__container__port list ->
  ?readiness_probe:
    spec__template__spec__container__readiness_probe list ->
  ?resources:spec__template__spec__container__resources list ->
  ?security_context:
    spec__template__spec__container__security_context list ->
  ?startup_probe:spec__template__spec__container__startup_probe list ->
  ?volume_mount:spec__template__spec__container__volume_mount list ->
  name:string prop ->
  unit ->
  spec__template__spec__container

type spec__template__spec__dns_config__option

val spec__template__spec__dns_config__option :
  ?value:string prop ->
  name:string prop ->
  unit ->
  spec__template__spec__dns_config__option

type spec__template__spec__dns_config

val spec__template__spec__dns_config :
  ?nameservers:string prop list ->
  ?searches:string prop list ->
  ?option_:spec__template__spec__dns_config__option list ->
  unit ->
  spec__template__spec__dns_config

type spec__template__spec__host_aliases

val spec__template__spec__host_aliases :
  hostnames:string prop list ->
  ip:string prop ->
  unit ->
  spec__template__spec__host_aliases

type spec__template__spec__image_pull_secrets

val spec__template__spec__image_pull_secrets :
  name:string prop ->
  unit ->
  spec__template__spec__image_pull_secrets

type spec__template__spec__init_container__env__value_from__config_map_key_ref

val spec__template__spec__init_container__env__value_from__config_map_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  spec__template__spec__init_container__env__value_from__config_map_key_ref

type spec__template__spec__init_container__env__value_from__field_ref

val spec__template__spec__init_container__env__value_from__field_ref :
  ?api_version:string prop ->
  ?field_path:string prop ->
  unit ->
  spec__template__spec__init_container__env__value_from__field_ref

type spec__template__spec__init_container__env__value_from__resource_field_ref

val spec__template__spec__init_container__env__value_from__resource_field_ref :
  ?container_name:string prop ->
  ?divisor:string prop ->
  resource:string prop ->
  unit ->
  spec__template__spec__init_container__env__value_from__resource_field_ref

type spec__template__spec__init_container__env__value_from__secret_key_ref

val spec__template__spec__init_container__env__value_from__secret_key_ref :
  ?key:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  unit ->
  spec__template__spec__init_container__env__value_from__secret_key_ref

type spec__template__spec__init_container__env__value_from

val spec__template__spec__init_container__env__value_from :
  ?config_map_key_ref:
    spec__template__spec__init_container__env__value_from__config_map_key_ref
    list ->
  ?field_ref:
    spec__template__spec__init_container__env__value_from__field_ref
    list ->
  ?resource_field_ref:
    spec__template__spec__init_container__env__value_from__resource_field_ref
    list ->
  ?secret_key_ref:
    spec__template__spec__init_container__env__value_from__secret_key_ref
    list ->
  unit ->
  spec__template__spec__init_container__env__value_from

type spec__template__spec__init_container__env

val spec__template__spec__init_container__env :
  ?value:string prop ->
  ?value_from:
    spec__template__spec__init_container__env__value_from list ->
  name:string prop ->
  unit ->
  spec__template__spec__init_container__env

type spec__template__spec__init_container__env_from__config_map_ref

val spec__template__spec__init_container__env_from__config_map_ref :
  ?optional:bool prop ->
  name:string prop ->
  unit ->
  spec__template__spec__init_container__env_from__config_map_ref

type spec__template__spec__init_container__env_from__secret_ref

val spec__template__spec__init_container__env_from__secret_ref :
  ?optional:bool prop ->
  name:string prop ->
  unit ->
  spec__template__spec__init_container__env_from__secret_ref

type spec__template__spec__init_container__env_from

val spec__template__spec__init_container__env_from :
  ?prefix:string prop ->
  ?config_map_ref:
    spec__template__spec__init_container__env_from__config_map_ref
    list ->
  ?secret_ref:
    spec__template__spec__init_container__env_from__secret_ref list ->
  unit ->
  spec__template__spec__init_container__env_from

type spec__template__spec__init_container__lifecycle__post_start__exec

val spec__template__spec__init_container__lifecycle__post_start__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__init_container__lifecycle__post_start__exec

type spec__template__spec__init_container__lifecycle__post_start__http_get__http_header

val spec__template__spec__init_container__lifecycle__post_start__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__init_container__lifecycle__post_start__http_get__http_header

type spec__template__spec__init_container__lifecycle__post_start__http_get

val spec__template__spec__init_container__lifecycle__post_start__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    list ->
  unit ->
  spec__template__spec__init_container__lifecycle__post_start__http_get

type spec__template__spec__init_container__lifecycle__post_start__tcp_socket

val spec__template__spec__init_container__lifecycle__post_start__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__init_container__lifecycle__post_start__tcp_socket

type spec__template__spec__init_container__lifecycle__post_start

val spec__template__spec__init_container__lifecycle__post_start :
  ?exec:
    spec__template__spec__init_container__lifecycle__post_start__exec
    list ->
  ?http_get:
    spec__template__spec__init_container__lifecycle__post_start__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    list ->
  unit ->
  spec__template__spec__init_container__lifecycle__post_start

type spec__template__spec__init_container__lifecycle__pre_stop__exec

val spec__template__spec__init_container__lifecycle__pre_stop__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__init_container__lifecycle__pre_stop__exec

type spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header

val spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header

type spec__template__spec__init_container__lifecycle__pre_stop__http_get

val spec__template__spec__init_container__lifecycle__pre_stop__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    list ->
  unit ->
  spec__template__spec__init_container__lifecycle__pre_stop__http_get

type spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket

val spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket

type spec__template__spec__init_container__lifecycle__pre_stop

val spec__template__spec__init_container__lifecycle__pre_stop :
  ?exec:
    spec__template__spec__init_container__lifecycle__pre_stop__exec
    list ->
  ?http_get:
    spec__template__spec__init_container__lifecycle__pre_stop__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    list ->
  unit ->
  spec__template__spec__init_container__lifecycle__pre_stop

type spec__template__spec__init_container__lifecycle

val spec__template__spec__init_container__lifecycle :
  ?post_start:
    spec__template__spec__init_container__lifecycle__post_start list ->
  ?pre_stop:
    spec__template__spec__init_container__lifecycle__pre_stop list ->
  unit ->
  spec__template__spec__init_container__lifecycle

type spec__template__spec__init_container__liveness_probe__exec

val spec__template__spec__init_container__liveness_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__init_container__liveness_probe__exec

type spec__template__spec__init_container__liveness_probe__grpc

val spec__template__spec__init_container__liveness_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__init_container__liveness_probe__grpc

type spec__template__spec__init_container__liveness_probe__http_get__http_header

val spec__template__spec__init_container__liveness_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__init_container__liveness_probe__http_get__http_header

type spec__template__spec__init_container__liveness_probe__http_get

val spec__template__spec__init_container__liveness_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__init_container__liveness_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__init_container__liveness_probe__http_get

type spec__template__spec__init_container__liveness_probe__tcp_socket

val spec__template__spec__init_container__liveness_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__init_container__liveness_probe__tcp_socket

type spec__template__spec__init_container__liveness_probe

val spec__template__spec__init_container__liveness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:
    spec__template__spec__init_container__liveness_probe__exec list ->
  ?grpc:
    spec__template__spec__init_container__liveness_probe__grpc list ->
  ?http_get:
    spec__template__spec__init_container__liveness_probe__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__init_container__liveness_probe__tcp_socket
    list ->
  unit ->
  spec__template__spec__init_container__liveness_probe

type spec__template__spec__init_container__port

val spec__template__spec__init_container__port :
  ?host_ip:string prop ->
  ?host_port:float prop ->
  ?name:string prop ->
  ?protocol:string prop ->
  container_port:float prop ->
  unit ->
  spec__template__spec__init_container__port

type spec__template__spec__init_container__readiness_probe__exec

val spec__template__spec__init_container__readiness_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__init_container__readiness_probe__exec

type spec__template__spec__init_container__readiness_probe__grpc

val spec__template__spec__init_container__readiness_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__init_container__readiness_probe__grpc

type spec__template__spec__init_container__readiness_probe__http_get__http_header

val spec__template__spec__init_container__readiness_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__init_container__readiness_probe__http_get__http_header

type spec__template__spec__init_container__readiness_probe__http_get

val spec__template__spec__init_container__readiness_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__init_container__readiness_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__init_container__readiness_probe__http_get

type spec__template__spec__init_container__readiness_probe__tcp_socket

val spec__template__spec__init_container__readiness_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__init_container__readiness_probe__tcp_socket

type spec__template__spec__init_container__readiness_probe

val spec__template__spec__init_container__readiness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:
    spec__template__spec__init_container__readiness_probe__exec list ->
  ?grpc:
    spec__template__spec__init_container__readiness_probe__grpc list ->
  ?http_get:
    spec__template__spec__init_container__readiness_probe__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__init_container__readiness_probe__tcp_socket
    list ->
  unit ->
  spec__template__spec__init_container__readiness_probe

type spec__template__spec__init_container__resources

val spec__template__spec__init_container__resources :
  ?limits:(string * string prop) list ->
  ?requests:(string * string prop) list ->
  unit ->
  spec__template__spec__init_container__resources

type spec__template__spec__init_container__security_context__capabilities

val spec__template__spec__init_container__security_context__capabilities :
  ?add:string prop list ->
  ?drop:string prop list ->
  unit ->
  spec__template__spec__init_container__security_context__capabilities

type spec__template__spec__init_container__security_context__se_linux_options

val spec__template__spec__init_container__security_context__se_linux_options :
  ?level:string prop ->
  ?role:string prop ->
  ?type_:string prop ->
  ?user:string prop ->
  unit ->
  spec__template__spec__init_container__security_context__se_linux_options

type spec__template__spec__init_container__security_context__seccomp_profile

val spec__template__spec__init_container__security_context__seccomp_profile :
  ?localhost_profile:string prop ->
  ?type_:string prop ->
  unit ->
  spec__template__spec__init_container__security_context__seccomp_profile

type spec__template__spec__init_container__security_context

val spec__template__spec__init_container__security_context :
  ?allow_privilege_escalation:bool prop ->
  ?privileged:bool prop ->
  ?read_only_root_filesystem:bool prop ->
  ?run_as_group:string prop ->
  ?run_as_non_root:bool prop ->
  ?run_as_user:string prop ->
  ?capabilities:
    spec__template__spec__init_container__security_context__capabilities
    list ->
  ?se_linux_options:
    spec__template__spec__init_container__security_context__se_linux_options
    list ->
  ?seccomp_profile:
    spec__template__spec__init_container__security_context__seccomp_profile
    list ->
  unit ->
  spec__template__spec__init_container__security_context

type spec__template__spec__init_container__startup_probe__exec

val spec__template__spec__init_container__startup_probe__exec :
  ?command:string prop list ->
  unit ->
  spec__template__spec__init_container__startup_probe__exec

type spec__template__spec__init_container__startup_probe__grpc

val spec__template__spec__init_container__startup_probe__grpc :
  ?service:string prop ->
  port:float prop ->
  unit ->
  spec__template__spec__init_container__startup_probe__grpc

type spec__template__spec__init_container__startup_probe__http_get__http_header

val spec__template__spec__init_container__startup_probe__http_get__http_header :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__init_container__startup_probe__http_get__http_header

type spec__template__spec__init_container__startup_probe__http_get

val spec__template__spec__init_container__startup_probe__http_get :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?scheme:string prop ->
  ?http_header:
    spec__template__spec__init_container__startup_probe__http_get__http_header
    list ->
  unit ->
  spec__template__spec__init_container__startup_probe__http_get

type spec__template__spec__init_container__startup_probe__tcp_socket

val spec__template__spec__init_container__startup_probe__tcp_socket :
  port:string prop ->
  unit ->
  spec__template__spec__init_container__startup_probe__tcp_socket

type spec__template__spec__init_container__startup_probe

val spec__template__spec__init_container__startup_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  ?exec:
    spec__template__spec__init_container__startup_probe__exec list ->
  ?grpc:
    spec__template__spec__init_container__startup_probe__grpc list ->
  ?http_get:
    spec__template__spec__init_container__startup_probe__http_get
    list ->
  ?tcp_socket:
    spec__template__spec__init_container__startup_probe__tcp_socket
    list ->
  unit ->
  spec__template__spec__init_container__startup_probe

type spec__template__spec__init_container__volume_mount

val spec__template__spec__init_container__volume_mount :
  ?mount_propagation:string prop ->
  ?read_only:bool prop ->
  ?sub_path:string prop ->
  mount_path:string prop ->
  name:string prop ->
  unit ->
  spec__template__spec__init_container__volume_mount

type spec__template__spec__init_container

val spec__template__spec__init_container :
  ?args:string prop list ->
  ?command:string prop list ->
  ?image:string prop ->
  ?image_pull_policy:string prop ->
  ?stdin:bool prop ->
  ?stdin_once:bool prop ->
  ?termination_message_path:string prop ->
  ?termination_message_policy:string prop ->
  ?tty:bool prop ->
  ?working_dir:string prop ->
  ?env:spec__template__spec__init_container__env list ->
  ?env_from:spec__template__spec__init_container__env_from list ->
  ?lifecycle:spec__template__spec__init_container__lifecycle list ->
  ?liveness_probe:
    spec__template__spec__init_container__liveness_probe list ->
  ?port:spec__template__spec__init_container__port list ->
  ?readiness_probe:
    spec__template__spec__init_container__readiness_probe list ->
  ?resources:spec__template__spec__init_container__resources list ->
  ?security_context:
    spec__template__spec__init_container__security_context list ->
  ?startup_probe:
    spec__template__spec__init_container__startup_probe list ->
  ?volume_mount:
    spec__template__spec__init_container__volume_mount list ->
  name:string prop ->
  unit ->
  spec__template__spec__init_container

type spec__template__spec__os

val spec__template__spec__os :
  name:string prop -> unit -> spec__template__spec__os

type spec__template__spec__readiness_gate

val spec__template__spec__readiness_gate :
  condition_type:string prop ->
  unit ->
  spec__template__spec__readiness_gate

type spec__template__spec__security_context__se_linux_options

val spec__template__spec__security_context__se_linux_options :
  ?level:string prop ->
  ?role:string prop ->
  ?type_:string prop ->
  ?user:string prop ->
  unit ->
  spec__template__spec__security_context__se_linux_options

type spec__template__spec__security_context__seccomp_profile

val spec__template__spec__security_context__seccomp_profile :
  ?localhost_profile:string prop ->
  ?type_:string prop ->
  unit ->
  spec__template__spec__security_context__seccomp_profile

type spec__template__spec__security_context__sysctl

val spec__template__spec__security_context__sysctl :
  name:string prop ->
  value:string prop ->
  unit ->
  spec__template__spec__security_context__sysctl

type spec__template__spec__security_context__windows_options

val spec__template__spec__security_context__windows_options :
  ?gmsa_credential_spec:string prop ->
  ?gmsa_credential_spec_name:string prop ->
  ?host_process:bool prop ->
  ?run_as_username:string prop ->
  unit ->
  spec__template__spec__security_context__windows_options

type spec__template__spec__security_context

val spec__template__spec__security_context :
  ?fs_group:string prop ->
  ?fs_group_change_policy:string prop ->
  ?run_as_group:string prop ->
  ?run_as_non_root:bool prop ->
  ?run_as_user:string prop ->
  ?supplemental_groups:float prop list ->
  ?se_linux_options:
    spec__template__spec__security_context__se_linux_options list ->
  ?seccomp_profile:
    spec__template__spec__security_context__seccomp_profile list ->
  ?sysctl:spec__template__spec__security_context__sysctl list ->
  ?windows_options:
    spec__template__spec__security_context__windows_options list ->
  unit ->
  spec__template__spec__security_context

type spec__template__spec__toleration

val spec__template__spec__toleration :
  ?effect:string prop ->
  ?key:string prop ->
  ?operator:string prop ->
  ?toleration_seconds:string prop ->
  ?value:string prop ->
  unit ->
  spec__template__spec__toleration

type spec__template__spec__topology_spread_constraint__label_selector__match_expressions

val spec__template__spec__topology_spread_constraint__label_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__topology_spread_constraint__label_selector__match_expressions

type spec__template__spec__topology_spread_constraint__label_selector

val spec__template__spec__topology_spread_constraint__label_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__topology_spread_constraint__label_selector__match_expressions
    list ->
  unit ->
  spec__template__spec__topology_spread_constraint__label_selector

type spec__template__spec__topology_spread_constraint

val spec__template__spec__topology_spread_constraint :
  ?match_label_keys:string prop list ->
  ?max_skew:float prop ->
  ?min_domains:float prop ->
  ?node_affinity_policy:string prop ->
  ?node_taints_policy:string prop ->
  ?topology_key:string prop ->
  ?when_unsatisfiable:string prop ->
  ?label_selector:
    spec__template__spec__topology_spread_constraint__label_selector
    list ->
  unit ->
  spec__template__spec__topology_spread_constraint

type spec__template__spec__volume__aws_elastic_block_store

val spec__template__spec__volume__aws_elastic_block_store :
  ?fs_type:string prop ->
  ?partition:float prop ->
  ?read_only:bool prop ->
  volume_id:string prop ->
  unit ->
  spec__template__spec__volume__aws_elastic_block_store

type spec__template__spec__volume__azure_disk

val spec__template__spec__volume__azure_disk :
  ?fs_type:string prop ->
  ?kind:string prop ->
  ?read_only:bool prop ->
  caching_mode:string prop ->
  data_disk_uri:string prop ->
  disk_name:string prop ->
  unit ->
  spec__template__spec__volume__azure_disk

type spec__template__spec__volume__azure_file

val spec__template__spec__volume__azure_file :
  ?read_only:bool prop ->
  ?secret_namespace:string prop ->
  secret_name:string prop ->
  share_name:string prop ->
  unit ->
  spec__template__spec__volume__azure_file

type spec__template__spec__volume__ceph_fs__secret_ref

val spec__template__spec__volume__ceph_fs__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__template__spec__volume__ceph_fs__secret_ref

type spec__template__spec__volume__ceph_fs

val spec__template__spec__volume__ceph_fs :
  ?path:string prop ->
  ?read_only:bool prop ->
  ?secret_file:string prop ->
  ?user:string prop ->
  ?secret_ref:spec__template__spec__volume__ceph_fs__secret_ref list ->
  monitors:string prop list ->
  unit ->
  spec__template__spec__volume__ceph_fs

type spec__template__spec__volume__cinder

val spec__template__spec__volume__cinder :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  volume_id:string prop ->
  unit ->
  spec__template__spec__volume__cinder

type spec__template__spec__volume__config_map__items

val spec__template__spec__volume__config_map__items :
  ?key:string prop ->
  ?mode:string prop ->
  ?path:string prop ->
  unit ->
  spec__template__spec__volume__config_map__items

type spec__template__spec__volume__config_map

val spec__template__spec__volume__config_map :
  ?default_mode:string prop ->
  ?name:string prop ->
  ?optional:bool prop ->
  ?items:spec__template__spec__volume__config_map__items list ->
  unit ->
  spec__template__spec__volume__config_map

type spec__template__spec__volume__csi__node_publish_secret_ref

val spec__template__spec__volume__csi__node_publish_secret_ref :
  ?name:string prop ->
  unit ->
  spec__template__spec__volume__csi__node_publish_secret_ref

type spec__template__spec__volume__csi

val spec__template__spec__volume__csi :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  ?volume_attributes:(string * string prop) list ->
  ?node_publish_secret_ref:
    spec__template__spec__volume__csi__node_publish_secret_ref list ->
  driver:string prop ->
  unit ->
  spec__template__spec__volume__csi

type spec__template__spec__volume__downward_api__items__field_ref

val spec__template__spec__volume__downward_api__items__field_ref :
  ?api_version:string prop ->
  ?field_path:string prop ->
  unit ->
  spec__template__spec__volume__downward_api__items__field_ref

type spec__template__spec__volume__downward_api__items__resource_field_ref

val spec__template__spec__volume__downward_api__items__resource_field_ref :
  ?divisor:string prop ->
  container_name:string prop ->
  resource:string prop ->
  unit ->
  spec__template__spec__volume__downward_api__items__resource_field_ref

type spec__template__spec__volume__downward_api__items

val spec__template__spec__volume__downward_api__items :
  ?mode:string prop ->
  ?resource_field_ref:
    spec__template__spec__volume__downward_api__items__resource_field_ref
    list ->
  path:string prop ->
  field_ref:
    spec__template__spec__volume__downward_api__items__field_ref list ->
  unit ->
  spec__template__spec__volume__downward_api__items

type spec__template__spec__volume__downward_api

val spec__template__spec__volume__downward_api :
  ?default_mode:string prop ->
  ?items:spec__template__spec__volume__downward_api__items list ->
  unit ->
  spec__template__spec__volume__downward_api

type spec__template__spec__volume__empty_dir

val spec__template__spec__volume__empty_dir :
  ?medium:string prop ->
  ?size_limit:string prop ->
  unit ->
  spec__template__spec__volume__empty_dir

type spec__template__spec__volume__ephemeral__volume_claim_template__metadata

val spec__template__spec__volume__ephemeral__volume_claim_template__metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template__metadata

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources

val spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources :
  ?limits:(string * string prop) list ->
  ?requests:(string * string prop) list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions

val spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector

val spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector

type spec__template__spec__volume__ephemeral__volume_claim_template__spec

val spec__template__spec__volume__ephemeral__volume_claim_template__spec :
  ?storage_class_name:string prop ->
  ?volume_mode:string prop ->
  ?volume_name:string prop ->
  ?selector:
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    list ->
  access_modes:string prop list ->
  resources:
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template__spec

type spec__template__spec__volume__ephemeral__volume_claim_template

val spec__template__spec__volume__ephemeral__volume_claim_template :
  ?metadata:
    spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    list ->
  spec:
    spec__template__spec__volume__ephemeral__volume_claim_template__spec
    list ->
  unit ->
  spec__template__spec__volume__ephemeral__volume_claim_template

type spec__template__spec__volume__ephemeral

val spec__template__spec__volume__ephemeral :
  volume_claim_template:
    spec__template__spec__volume__ephemeral__volume_claim_template
    list ->
  unit ->
  spec__template__spec__volume__ephemeral

type spec__template__spec__volume__fc

val spec__template__spec__volume__fc :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  lun:float prop ->
  target_ww_ns:string prop list ->
  unit ->
  spec__template__spec__volume__fc

type spec__template__spec__volume__flex_volume__secret_ref

val spec__template__spec__volume__flex_volume__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__template__spec__volume__flex_volume__secret_ref

type spec__template__spec__volume__flex_volume

val spec__template__spec__volume__flex_volume :
  ?fs_type:string prop ->
  ?options:(string * string prop) list ->
  ?read_only:bool prop ->
  ?secret_ref:
    spec__template__spec__volume__flex_volume__secret_ref list ->
  driver:string prop ->
  unit ->
  spec__template__spec__volume__flex_volume

type spec__template__spec__volume__flocker

val spec__template__spec__volume__flocker :
  ?dataset_name:string prop ->
  ?dataset_uuid:string prop ->
  unit ->
  spec__template__spec__volume__flocker

type spec__template__spec__volume__gce_persistent_disk

val spec__template__spec__volume__gce_persistent_disk :
  ?fs_type:string prop ->
  ?partition:float prop ->
  ?read_only:bool prop ->
  pd_name:string prop ->
  unit ->
  spec__template__spec__volume__gce_persistent_disk

type spec__template__spec__volume__git_repo

val spec__template__spec__volume__git_repo :
  ?directory:string prop ->
  ?repository:string prop ->
  ?revision:string prop ->
  unit ->
  spec__template__spec__volume__git_repo

type spec__template__spec__volume__glusterfs

val spec__template__spec__volume__glusterfs :
  ?read_only:bool prop ->
  endpoints_name:string prop ->
  path:string prop ->
  unit ->
  spec__template__spec__volume__glusterfs

type spec__template__spec__volume__host_path

val spec__template__spec__volume__host_path :
  ?path:string prop ->
  ?type_:string prop ->
  unit ->
  spec__template__spec__volume__host_path

type spec__template__spec__volume__iscsi

val spec__template__spec__volume__iscsi :
  ?fs_type:string prop ->
  ?iscsi_interface:string prop ->
  ?lun:float prop ->
  ?read_only:bool prop ->
  iqn:string prop ->
  target_portal:string prop ->
  unit ->
  spec__template__spec__volume__iscsi

type spec__template__spec__volume__local

val spec__template__spec__volume__local :
  ?path:string prop -> unit -> spec__template__spec__volume__local

type spec__template__spec__volume__nfs

val spec__template__spec__volume__nfs :
  ?read_only:bool prop ->
  path:string prop ->
  server:string prop ->
  unit ->
  spec__template__spec__volume__nfs

type spec__template__spec__volume__persistent_volume_claim

val spec__template__spec__volume__persistent_volume_claim :
  ?claim_name:string prop ->
  ?read_only:bool prop ->
  unit ->
  spec__template__spec__volume__persistent_volume_claim

type spec__template__spec__volume__photon_persistent_disk

val spec__template__spec__volume__photon_persistent_disk :
  ?fs_type:string prop ->
  pd_id:string prop ->
  unit ->
  spec__template__spec__volume__photon_persistent_disk

type spec__template__spec__volume__projected__sources__config_map__items

val spec__template__spec__volume__projected__sources__config_map__items :
  ?key:string prop ->
  ?mode:string prop ->
  ?path:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__config_map__items

type spec__template__spec__volume__projected__sources__config_map

val spec__template__spec__volume__projected__sources__config_map :
  ?name:string prop ->
  ?optional:bool prop ->
  ?items:
    spec__template__spec__volume__projected__sources__config_map__items
    list ->
  unit ->
  spec__template__spec__volume__projected__sources__config_map

type spec__template__spec__volume__projected__sources__downward_api__items__field_ref

val spec__template__spec__volume__projected__sources__downward_api__items__field_ref :
  ?api_version:string prop ->
  ?field_path:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__downward_api__items__field_ref

type spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref

val spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref :
  ?divisor:string prop ->
  container_name:string prop ->
  resource:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref

type spec__template__spec__volume__projected__sources__downward_api__items

val spec__template__spec__volume__projected__sources__downward_api__items :
  ?mode:string prop ->
  ?field_ref:
    spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    list ->
  ?resource_field_ref:
    spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    list ->
  path:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__downward_api__items

type spec__template__spec__volume__projected__sources__downward_api

val spec__template__spec__volume__projected__sources__downward_api :
  ?items:
    spec__template__spec__volume__projected__sources__downward_api__items
    list ->
  unit ->
  spec__template__spec__volume__projected__sources__downward_api

type spec__template__spec__volume__projected__sources__secret__items

val spec__template__spec__volume__projected__sources__secret__items :
  ?key:string prop ->
  ?mode:string prop ->
  ?path:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__secret__items

type spec__template__spec__volume__projected__sources__secret

val spec__template__spec__volume__projected__sources__secret :
  ?name:string prop ->
  ?optional:bool prop ->
  ?items:
    spec__template__spec__volume__projected__sources__secret__items
    list ->
  unit ->
  spec__template__spec__volume__projected__sources__secret

type spec__template__spec__volume__projected__sources__service_account_token

val spec__template__spec__volume__projected__sources__service_account_token :
  ?audience:string prop ->
  ?expiration_seconds:float prop ->
  path:string prop ->
  unit ->
  spec__template__spec__volume__projected__sources__service_account_token

type spec__template__spec__volume__projected__sources

val spec__template__spec__volume__projected__sources :
  ?config_map:
    spec__template__spec__volume__projected__sources__config_map list ->
  ?downward_api:
    spec__template__spec__volume__projected__sources__downward_api
    list ->
  ?secret:
    spec__template__spec__volume__projected__sources__secret list ->
  ?service_account_token:
    spec__template__spec__volume__projected__sources__service_account_token
    list ->
  unit ->
  spec__template__spec__volume__projected__sources

type spec__template__spec__volume__projected

val spec__template__spec__volume__projected :
  ?default_mode:string prop ->
  sources:spec__template__spec__volume__projected__sources list ->
  unit ->
  spec__template__spec__volume__projected

type spec__template__spec__volume__quobyte

val spec__template__spec__volume__quobyte :
  ?group:string prop ->
  ?read_only:bool prop ->
  ?user:string prop ->
  registry:string prop ->
  volume:string prop ->
  unit ->
  spec__template__spec__volume__quobyte

type spec__template__spec__volume__rbd__secret_ref

val spec__template__spec__volume__rbd__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__template__spec__volume__rbd__secret_ref

type spec__template__spec__volume__rbd

val spec__template__spec__volume__rbd :
  ?fs_type:string prop ->
  ?keyring:string prop ->
  ?rados_user:string prop ->
  ?rbd_pool:string prop ->
  ?read_only:bool prop ->
  ?secret_ref:spec__template__spec__volume__rbd__secret_ref list ->
  ceph_monitors:string prop list ->
  rbd_image:string prop ->
  unit ->
  spec__template__spec__volume__rbd

type spec__template__spec__volume__secret__items

val spec__template__spec__volume__secret__items :
  ?key:string prop ->
  ?mode:string prop ->
  ?path:string prop ->
  unit ->
  spec__template__spec__volume__secret__items

type spec__template__spec__volume__secret

val spec__template__spec__volume__secret :
  ?default_mode:string prop ->
  ?optional:bool prop ->
  ?secret_name:string prop ->
  ?items:spec__template__spec__volume__secret__items list ->
  unit ->
  spec__template__spec__volume__secret

type spec__template__spec__volume__vsphere_volume

val spec__template__spec__volume__vsphere_volume :
  ?fs_type:string prop ->
  volume_path:string prop ->
  unit ->
  spec__template__spec__volume__vsphere_volume

type spec__template__spec__volume

val spec__template__spec__volume :
  ?name:string prop ->
  ?aws_elastic_block_store:
    spec__template__spec__volume__aws_elastic_block_store list ->
  ?azure_disk:spec__template__spec__volume__azure_disk list ->
  ?azure_file:spec__template__spec__volume__azure_file list ->
  ?ceph_fs:spec__template__spec__volume__ceph_fs list ->
  ?cinder:spec__template__spec__volume__cinder list ->
  ?config_map:spec__template__spec__volume__config_map list ->
  ?csi:spec__template__spec__volume__csi list ->
  ?downward_api:spec__template__spec__volume__downward_api list ->
  ?empty_dir:spec__template__spec__volume__empty_dir list ->
  ?ephemeral:spec__template__spec__volume__ephemeral list ->
  ?fc:spec__template__spec__volume__fc list ->
  ?flex_volume:spec__template__spec__volume__flex_volume list ->
  ?flocker:spec__template__spec__volume__flocker list ->
  ?gce_persistent_disk:
    spec__template__spec__volume__gce_persistent_disk list ->
  ?git_repo:spec__template__spec__volume__git_repo list ->
  ?glusterfs:spec__template__spec__volume__glusterfs list ->
  ?host_path:spec__template__spec__volume__host_path list ->
  ?iscsi:spec__template__spec__volume__iscsi list ->
  ?local:spec__template__spec__volume__local list ->
  ?nfs:spec__template__spec__volume__nfs list ->
  ?persistent_volume_claim:
    spec__template__spec__volume__persistent_volume_claim list ->
  ?photon_persistent_disk:
    spec__template__spec__volume__photon_persistent_disk list ->
  ?projected:spec__template__spec__volume__projected list ->
  ?quobyte:spec__template__spec__volume__quobyte list ->
  ?rbd:spec__template__spec__volume__rbd list ->
  ?secret:spec__template__spec__volume__secret list ->
  ?vsphere_volume:spec__template__spec__volume__vsphere_volume list ->
  unit ->
  spec__template__spec__volume

type spec__template__spec

val spec__template__spec :
  ?active_deadline_seconds:float prop ->
  ?automount_service_account_token:bool prop ->
  ?dns_policy:string prop ->
  ?enable_service_links:bool prop ->
  ?host_ipc:bool prop ->
  ?host_network:bool prop ->
  ?host_pid:bool prop ->
  ?hostname:string prop ->
  ?node_name:string prop ->
  ?node_selector:(string * string prop) list ->
  ?priority_class_name:string prop ->
  ?restart_policy:string prop ->
  ?runtime_class_name:string prop ->
  ?scheduler_name:string prop ->
  ?service_account_name:string prop ->
  ?share_process_namespace:bool prop ->
  ?subdomain:string prop ->
  ?termination_grace_period_seconds:float prop ->
  ?affinity:spec__template__spec__affinity list ->
  ?container:spec__template__spec__container list ->
  ?dns_config:spec__template__spec__dns_config list ->
  ?host_aliases:spec__template__spec__host_aliases list ->
  ?image_pull_secrets:spec__template__spec__image_pull_secrets list ->
  ?init_container:spec__template__spec__init_container list ->
  ?os:spec__template__spec__os list ->
  ?readiness_gate:spec__template__spec__readiness_gate list ->
  ?security_context:spec__template__spec__security_context list ->
  ?toleration:spec__template__spec__toleration list ->
  ?topology_spread_constraint:
    spec__template__spec__topology_spread_constraint list ->
  ?volume:spec__template__spec__volume list ->
  unit ->
  spec__template__spec

type spec__template

val spec__template :
  metadata:spec__template__metadata list ->
  spec:spec__template__spec list ->
  unit ->
  spec__template

type spec

val spec :
  ?min_ready_seconds:float prop ->
  ?replicas:float prop ->
  selector:(string * string prop) list ->
  template:spec__template list ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type kubernetes_replication_controller

val kubernetes_replication_controller :
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_replication_controller

val yojson_of_kubernetes_replication_controller :
  kubernetes_replication_controller -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
