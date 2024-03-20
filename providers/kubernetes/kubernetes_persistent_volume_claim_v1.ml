(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the persistent volume claim that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume claim. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the persistent volume claim, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the persistent volume claim must be unique. *)
}
[@@deriving yojson_of]
(** Standard persistent volume claim's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__resources = {
  limits : (string * string prop) list option; [@option]
      (** Map describing the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
  requests : (string * string prop) list option; [@option]
      (** Map describing the minimum amount of compute resources required. If this is omitted for a container, it defaults to `limits` if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
}
[@@deriving yojson_of]
(** A list of the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type spec__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type spec__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions : spec__selector__match_expressions list;
}
[@@deriving yojson_of]
(** A label query over volumes to consider for binding. *)

type spec = {
  access_modes : string prop list;
      (** A set of the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes *)
  storage_class_name : string prop option; [@option]
      (** Name of the storage class requested by the claim *)
  volume_mode : string prop option; [@option]
      (** Defines what type of volume is required by the claim. *)
  volume_name : string prop option; [@option]
      (** The binding reference to the PersistentVolume backing this claim. *)
  resources : spec__resources list;
  selector : spec__selector list;
}
[@@deriving yojson_of]
(** Spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_persistent_volume_claim_v1 = {
  id : string prop option; [@option]  (** id *)
  wait_until_bound : bool prop option; [@option]
      (** Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space) *)
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume_claim_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__resources ?limits ?requests () : spec__resources =
  { limits; requests }

let spec__selector__match_expressions ?key ?operator ?values () :
    spec__selector__match_expressions =
  { key; operator; values }

let spec__selector ?match_labels ~match_expressions () :
    spec__selector =
  { match_labels; match_expressions }

let spec ?storage_class_name ?volume_mode ?volume_name ~access_modes
    ~resources ~selector () : spec =
  {
    access_modes;
    storage_class_name;
    volume_mode;
    volume_name;
    resources;
    selector;
  }

let timeouts ?create () : timeouts = { create }

let kubernetes_persistent_volume_claim_v1 ?id ?wait_until_bound
    ?timeouts ~metadata ~spec () :
    kubernetes_persistent_volume_claim_v1 =
  { id; wait_until_bound; metadata; spec; timeouts }

type t = { id : string prop; wait_until_bound : bool prop }

let make ?id ?wait_until_bound ?timeouts ~metadata ~spec __id =
  let __type = "kubernetes_persistent_volume_claim_v1" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       wait_until_bound =
         Prop.computed __type __id "wait_until_bound";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_persistent_volume_claim_v1
        (kubernetes_persistent_volume_claim_v1 ?id ?wait_until_bound
           ?timeouts ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?wait_until_bound ?timeouts ~metadata
    ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?wait_until_bound ?timeouts ~metadata ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
