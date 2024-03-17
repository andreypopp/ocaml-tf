(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_node_taint__metadata = {
  name : string;  (** The name of the node *)
}
[@@deriving yojson_of]
(** kubernetes_node_taint__metadata *)

type kubernetes_node_taint__taint = {
  effect : string;  (** The taint effect *)
  key : string;  (** The taint key *)
  value : string;  (** The taint value *)
}
[@@deriving yojson_of]
(** kubernetes_node_taint__taint *)

type kubernetes_node_taint = {
  field_manager : string option; [@option]
      (** Set the name of the field manager for the node taint *)
  force : bool option; [@option]
      (** Force overwriting annotations that were created or edited outside of Terraform. *)
  metadata : kubernetes_node_taint__metadata list;
  taint : kubernetes_node_taint__taint list;
}
[@@deriving yojson_of]
(** kubernetes_node_taint *)

let kubernetes_node_taint ?field_manager ?force ~metadata ~taint
    __resource_id =
  let __resource_type = "kubernetes_node_taint" in
  let __resource = { field_manager; force; metadata; taint } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_node_taint __resource);
  ()
