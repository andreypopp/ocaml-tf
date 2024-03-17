(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_node_taint__metadata = {
  name : string prop;  (** The name of the node *)
}
[@@deriving yojson_of]
(** kubernetes_node_taint__metadata *)

type kubernetes_node_taint__taint = {
  effect : string prop;  (** The taint effect *)
  key : string prop;  (** The taint key *)
  value : string prop;  (** The taint value *)
}
[@@deriving yojson_of]
(** kubernetes_node_taint__taint *)

type kubernetes_node_taint = {
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the node taint *)
  force : bool prop option; [@option]
      (** Force overwriting annotations that were created or edited outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_node_taint__metadata list;
  taint : kubernetes_node_taint__taint list;
}
[@@deriving yojson_of]
(** kubernetes_node_taint *)

let kubernetes_node_taint ?field_manager ?force ?id ~metadata ~taint
    __resource_id =
  let __resource_type = "kubernetes_node_taint" in
  let __resource = { field_manager; force; id; metadata; taint } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_node_taint __resource);
  ()
