(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_labels__metadata = {
  name : string;  (** The name of the resource. *)
  namespace : string option; [@option]
      (** The namespace of the resource. *)
}
[@@deriving yojson_of]
(** kubernetes_labels__metadata *)

type kubernetes_labels = {
  api_version : string;
      (** The apiVersion of the resource to label. *)
  field_manager : string option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool option; [@option]
      (** Force overwriting labels that were created or edited outside of Terraform. *)
  kind : string;  (** The kind of the resource to label. *)
  labels : (string * string) list;
      (** A map of labels to apply to the resource. *)
  metadata : kubernetes_labels__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_labels *)

let kubernetes_labels ?field_manager ?force ~api_version ~kind
    ~labels ~metadata __resource_id =
  let __resource_type = "kubernetes_labels" in
  let __resource =
    { api_version; field_manager; force; kind; labels; metadata }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_labels __resource);
  ()
