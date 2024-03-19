(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  name : string prop;  (** The name of the resource. *)
  namespace : string prop option; [@option]
      (** The namespace of the resource. *)
}
[@@deriving yojson_of]
(** metadata *)

type kubernetes_labels = {
  api_version : string prop;
      (** The apiVersion of the resource to label. *)
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool prop option; [@option]
      (** Force overwriting labels that were created or edited outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** The kind of the resource to label. *)
  labels : (string * string prop) list;
      (** A map of labels to apply to the resource. *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_labels *)

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_labels ?field_manager ?force ?id ~api_version ~kind
    ~labels ~metadata () : kubernetes_labels =
  { api_version; field_manager; force; id; kind; labels; metadata }

type t = {
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
}

let register ?tf_module ?field_manager ?force ?id ~api_version ~kind
    ~labels ~metadata __resource_id =
  let __resource_type = "kubernetes_labels" in
  let __resource =
    kubernetes_labels ?field_manager ?force ?id ~api_version ~kind
      ~labels ~metadata ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_labels __resource);
  let __resource_attributes =
    ({
       api_version =
         Prop.computed __resource_type __resource_id "api_version";
       field_manager =
         Prop.computed __resource_type __resource_id "field_manager";
       force = Prop.computed __resource_type __resource_id "force";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       labels = Prop.computed __resource_type __resource_id "labels";
     }
      : t)
  in
  __resource_attributes
