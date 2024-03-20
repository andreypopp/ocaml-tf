(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?field_manager ?force ?id ~metadata ~taint __id =
  let __type = "kubernetes_node_taint" in
  let __attrs =
    ({
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_node_taint
        (kubernetes_node_taint ?field_manager ?force ?id ~metadata
           ~taint ());
    attrs = __attrs;
  }

let register ?tf_module ?field_manager ?force ?id ~metadata ~taint
    __id =
  let (r : _ Tf_core.resource) =
    make ?field_manager ?force ?id ~metadata ~taint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
