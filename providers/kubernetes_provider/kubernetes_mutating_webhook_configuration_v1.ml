(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_mutating_webhook_configuration_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the mutating webhook configuration that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the mutating webhook configuration. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the mutating webhook configuration, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this mutating webhook configuration that can be used by clients to determine when mutating webhook configuration has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this mutating webhook configuration. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard mutating webhook configuration's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_mutating_webhook_configuration_v1__webhook__client_config__service = {
  name : string;  (** `name` is the name of the service. Required *)
  namespace : string;
      (** `namespace` is the namespace of the service. Required *)
  path : string option; [@option]
      (** `path` is an optional URL path which will be sent in any request to this service. *)
  port : float option; [@option]
      (** If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive). *)
}
[@@deriving yojson_of]
(** `service` is a reference to the service for this webhook. Either `service` or `url` must be specified.

If the webhook is running within the cluster, then you should use `service`. *)

type kubernetes_mutating_webhook_configuration_v1__webhook__client_config = {
  ca_bundle : string option; [@option]
      (** `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used. *)
  url : string option; [@option]
      (** `url` gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.

The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.

Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.

The scheme must be https; the URL must begin with https://.

A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.

Attempting to use a user or basic auth e.g. user:password@ is not allowed. Fragments (#...) and query parameters (?...) are not allowed, either. *)
  service :
    kubernetes_mutating_webhook_configuration_v1__webhook__client_config__service
    list;
}
[@@deriving yojson_of]
(** ClientConfig defines how to communicate with the hook. Required *)

type kubernetes_mutating_webhook_configuration_v1__webhook__namespace_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_mutating_webhook_configuration_v1__webhook__namespace_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_mutating_webhook_configuration_v1__webhook__namespace_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.

For example, to run the webhook on any objects whose namespace is not associated with runlevel of 0 or 1;  you will set the selector as follows: namespaceSelector: {
  matchExpressions: [
    {
      key: runlevel,
      operator: NotIn,
      values: [
        0,
        1
      ]
    }
  ]
}

If instead you want to only run the webhook on any objects whose namespace is associated with the environment of prod or staging; you will set the selector as follows: namespaceSelector: {
  matchExpressions: [
    {
      key: environment,
      operator: In,
      values: [
        prod,
        staging
      ]
    }
  ]
}

See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.

Default to the empty LabelSelector, which matches everything. *)

type kubernetes_mutating_webhook_configuration_v1__webhook__object_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_mutating_webhook_configuration_v1__webhook__object_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_mutating_webhook_configuration_v1__webhook__object_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything. *)

type kubernetes_mutating_webhook_configuration_v1__webhook__rule = {
  api_groups : string list;  (** api_groups *)
  api_versions : string list;  (** api_versions *)
  operations : string list;
      (** Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required. *)
  resources : string list;  (** resources *)
  scope : string option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects. *)

type kubernetes_mutating_webhook_configuration_v1__webhook = {
  admission_review_versions : string list option; [@option]
      (** AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy. *)
  failure_policy : string option; [@option]
      (** FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail. *)
  match_policy : string option; [@option]
      (** matchPolicy defines how the rules list is used to match incoming requests. Allowed values are Exact or Equivalent.

- Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but rules only included `apiGroups:[apps], apiVersions:[v1], resources: [deployments]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.

- Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and rules only included `apiGroups:[apps], apiVersions:[v1], resources: [deployments]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.

Defaults to Equivalent *)
  name : string;
      (** The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where imagepolicy is the name of the webhook, and kubernetes.io is the name of the organization. Required. *)
  reinvocation_policy : string option; [@option]
      (** reinvocationPolicy indicates whether this webhook should be called multiple times as part of a single admission evaluation. Allowed values are Never and IfNeeded.

Never: the webhook will not be called more than once in a single admission evaluation.

IfNeeded: the webhook will be called at least one additional time as part of the admission evaluation if the object being admitted is modified by other admission plugins after the initial webhook call. Webhooks that specify this option *must* be idempotent, able to process objects they previously admitted. Note: * the number of additional invocations is not guaranteed to be exactly one. * if additional invocations result in further modifications to the object, webhooks are not guaranteed to be invoked again. * webhooks that use this option may be reordered to minimize the number of additional invocations. * to validate an object after all mutations are guaranteed complete, use a validating admission webhook instead.

Defaults to Never. *)
  side_effects : string option; [@option]
      (** SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. *)
  timeout_seconds : float option; [@option]
      (** TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds. *)
  client_config :
    kubernetes_mutating_webhook_configuration_v1__webhook__client_config
    list;
  namespace_selector :
    kubernetes_mutating_webhook_configuration_v1__webhook__namespace_selector
    list;
  object_selector :
    kubernetes_mutating_webhook_configuration_v1__webhook__object_selector
    list;
  rule :
    kubernetes_mutating_webhook_configuration_v1__webhook__rule list;
}
[@@deriving yojson_of]
(** Webhooks is a list of webhooks and the affected resources and operations. *)

type kubernetes_mutating_webhook_configuration_v1 = {
  metadata :
    kubernetes_mutating_webhook_configuration_v1__metadata list;
  webhook :
    kubernetes_mutating_webhook_configuration_v1__webhook list;
}
[@@deriving yojson_of]
(** kubernetes_mutating_webhook_configuration_v1 *)

let kubernetes_mutating_webhook_configuration_v1 ~metadata ~webhook
    __resource_id =
  let __resource_type =
    "kubernetes_mutating_webhook_configuration_v1"
  in
  let __resource = { metadata; webhook } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_mutating_webhook_configuration_v1
       __resource);
  ()