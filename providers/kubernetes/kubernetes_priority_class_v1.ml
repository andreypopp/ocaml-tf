(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the priority class that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the priority class. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the priority class, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard priority class's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_priority_class_v1 = {
  description : string prop option; [@option]
      (** An arbitrary string that usually provides guidelines on when this priority class should be used. *)
  global_default : bool prop option; [@option]
      (** Specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority. *)
  id : string prop option; [@option]  (** id *)
  preemption_policy : string prop option; [@option]
      (** PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. *)
  value : float prop;
      (** The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec. *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_priority_class_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let kubernetes_priority_class_v1 ?description ?global_default ?id
    ?preemption_policy ~value ~metadata () :
    kubernetes_priority_class_v1 =
  {
    description;
    global_default;
    id;
    preemption_policy;
    value;
    metadata;
  }

type t = {
  description : string prop;
  global_default : bool prop;
  id : string prop;
  preemption_policy : string prop;
  value : float prop;
}

let register ?tf_module ?description ?global_default ?id
    ?preemption_policy ~value ~metadata __resource_id =
  let __resource_type = "kubernetes_priority_class_v1" in
  let __resource =
    kubernetes_priority_class_v1 ?description ?global_default ?id
      ?preemption_policy ~value ~metadata ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_priority_class_v1 __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       global_default =
         Prop.computed __resource_type __resource_id "global_default";
       id = Prop.computed __resource_type __resource_id "id";
       preemption_policy =
         Prop.computed __resource_type __resource_id
           "preemption_policy";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
