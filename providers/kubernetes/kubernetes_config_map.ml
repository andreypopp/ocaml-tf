(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the config map that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the config map. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the config map, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the config map must be unique. *)
}
[@@deriving yojson_of]
(** Standard config map's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_config_map = {
  binary_data : (string * string prop) list option; [@option]
      (** BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet. This field only accepts base64-encoded payloads that will be decoded/encoded before being sent/received to/from the apiserver. *)
  data : (string * string prop) list option; [@option]
      (** Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process. *)
  id : string prop option; [@option]  (** id *)
  immutable : bool prop option; [@option]
      (** Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_config_map *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let kubernetes_config_map ?binary_data ?data ?id ?immutable ~metadata
    () : kubernetes_config_map =
  { binary_data; data; id; immutable; metadata }

type t = {
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
}

let register ?tf_module ?binary_data ?data ?id ?immutable ~metadata
    __resource_id =
  let __resource_type = "kubernetes_config_map" in
  let __resource =
    kubernetes_config_map ?binary_data ?data ?id ?immutable ~metadata
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_config_map __resource);
  let __resource_attributes =
    ({
       binary_data =
         Prop.computed __resource_type __resource_id "binary_data";
       data = Prop.computed __resource_type __resource_id "data";
       id = Prop.computed __resource_type __resource_id "id";
       immutable =
         Prop.computed __resource_type __resource_id "immutable";
     }
      : t)
  in
  __resource_attributes
