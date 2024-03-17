(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_placement_group = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_placement_group *)

type t = {
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  servers : float list prop;
  type_ : string prop;
}

let hcloud_placement_group ?id ?labels ~name ~type_ __resource_id =
  let __resource_type = "hcloud_placement_group" in
  let __resource =
    ({ id; labels; name; type_ } : hcloud_placement_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_placement_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       servers =
         Prop.computed __resource_type __resource_id "servers";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
