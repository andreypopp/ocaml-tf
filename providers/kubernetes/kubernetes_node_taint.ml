(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = { name : string prop  (** The name of the node *) }
[@@deriving yojson_of]
(** metadata *)

type taint = {
  effect : string prop;  (** The taint effect *)
  key : string prop;  (** The taint key *)
  value : string prop;  (** The taint value *)
}
[@@deriving yojson_of]
(** taint *)

type kubernetes_node_taint = {
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the node taint *)
  force : bool prop option; [@option]
      (** Force overwriting annotations that were created or edited outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  taint : taint list;
}
[@@deriving yojson_of]
(** kubernetes_node_taint *)

let metadata ~name () : metadata = { name }
let taint ~effect ~key ~value () : taint = { effect; key; value }

let kubernetes_node_taint ?field_manager ?force ?id ~metadata ~taint
    () : kubernetes_node_taint =
  { field_manager; force; id; metadata; taint }

type t = {
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

let register ?tf_module ?field_manager ?force ?id ~metadata ~taint
    __resource_id =
  let __resource_type = "kubernetes_node_taint" in
  let __resource =
    kubernetes_node_taint ?field_manager ?force ?id ~metadata ~taint
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_node_taint __resource);
  let __resource_attributes =
    ({
       field_manager =
         Prop.computed __resource_type __resource_id "field_manager";
       force = Prop.computed __resource_type __resource_id "force";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
