(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_network_policy_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the network policy that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the network policy. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the network policy, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the network policy must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this network policy that can be used by clients to determine when network policy has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this network policy. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard network policy's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_network_policy_v1__spec__egress__ports = {
  port : string option; [@option]
      (** port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched. *)
  protocol : string option; [@option]
      (** protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP. *)
}
[@@deriving yojson_of]
(** ports is a list of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list. *)

type kubernetes_network_policy_v1__spec__egress__to__ip_block = {
  cidr : string option; [@option]
      (** cidr is a string representing the IPBlock Valid examples are 192.168.1.0/24 or 2001:db8::/64 *)
  except : string list option; [@option]
      (** except is a slice of CIDRs that should not be included within an IPBlock Valid examples are 192.168.1.0/24 or 2001:db8::/64 Except values will be rejected if they are outside the cidr range *)
}
[@@deriving yojson_of]
(** ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be. *)

type kubernetes_network_policy_v1__spec__egress__to__namespace_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_network_policy_v1__spec__egress__to__namespace_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_network_policy_v1__spec__egress__to__namespace_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.

If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector. *)

type kubernetes_network_policy_v1__spec__egress__to__pod_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_network_policy_v1__spec__egress__to__pod_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_network_policy_v1__spec__egress__to__pod_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.

If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace. *)

type kubernetes_network_policy_v1__spec__egress__to = {
  ip_block :
    kubernetes_network_policy_v1__spec__egress__to__ip_block list;
  namespace_selector :
    kubernetes_network_policy_v1__spec__egress__to__namespace_selector
    list;
  pod_selector :
    kubernetes_network_policy_v1__spec__egress__to__pod_selector list;
}
[@@deriving yojson_of]
(** to is a list of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list. *)

type kubernetes_network_policy_v1__spec__egress = {
  ports : kubernetes_network_policy_v1__spec__egress__ports list;
  to_ : kubernetes_network_policy_v1__spec__egress__to list;
}
[@@deriving yojson_of]
(** egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8 *)

type kubernetes_network_policy_v1__spec__ingress__from__ip_block = {
  cidr : string option; [@option]
      (** cidr is a string representing the IPBlock Valid examples are 192.168.1.0/24 or 2001:db8::/64 *)
  except : string list option; [@option]
      (** except is a slice of CIDRs that should not be included within an IPBlock Valid examples are 192.168.1.0/24 or 2001:db8::/64 Except values will be rejected if they are outside the cidr range *)
}
[@@deriving yojson_of]
(** ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be. *)

type kubernetes_network_policy_v1__spec__ingress__from__namespace_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_network_policy_v1__spec__ingress__from__namespace_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_network_policy_v1__spec__ingress__from__namespace_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.

If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector. *)

type kubernetes_network_policy_v1__spec__ingress__from__pod_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_network_policy_v1__spec__ingress__from__pod_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_network_policy_v1__spec__ingress__from__pod_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.

If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace. *)

type kubernetes_network_policy_v1__spec__ingress__from = {
  ip_block :
    kubernetes_network_policy_v1__spec__ingress__from__ip_block list;
  namespace_selector :
    kubernetes_network_policy_v1__spec__ingress__from__namespace_selector
    list;
  pod_selector :
    kubernetes_network_policy_v1__spec__ingress__from__pod_selector
    list;
}
[@@deriving yojson_of]
(** from is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list. *)

type kubernetes_network_policy_v1__spec__ingress__ports = {
  port : string option; [@option]
      (** port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched. *)
  protocol : string option; [@option]
      (** protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP. *)
}
[@@deriving yojson_of]
(** ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list. *)

type kubernetes_network_policy_v1__spec__ingress = {
  from : kubernetes_network_policy_v1__spec__ingress__from list;
  ports : kubernetes_network_policy_v1__spec__ingress__ports list;
}
[@@deriving yojson_of]
(** ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default) *)

type kubernetes_network_policy_v1__spec__pod_selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_network_policy_v1__spec__pod_selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_network_policy_v1__spec__pod_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** podSelector selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace. *)

type kubernetes_network_policy_v1__spec = {
  policy_types : string list;
      (** policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are [Ingress], [Egress], or [Ingress, Egress]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ Egress ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include Egress (since such a policy would not include an egress section and would otherwise default to just [ Ingress ]). This field is beta-level in 1.8 *)
  egress : kubernetes_network_policy_v1__spec__egress list;
  ingress : kubernetes_network_policy_v1__spec__ingress list;
  pod_selector :
    kubernetes_network_policy_v1__spec__pod_selector list;
}
[@@deriving yojson_of]
(** spec represents the specification of the desired behavior for this NetworkPolicy. *)

type kubernetes_network_policy_v1 = {
  metadata : kubernetes_network_policy_v1__metadata list;
  spec : kubernetes_network_policy_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_network_policy_v1 *)

let kubernetes_network_policy_v1 ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_network_policy_v1" in
  let __resource = { metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_network_policy_v1 __resource);
  ()
