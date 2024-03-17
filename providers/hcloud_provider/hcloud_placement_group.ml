(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_placement_group = {
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_placement_group *)

let hcloud_placement_group ?id ?labels ~name ~type_ __resource_id =
  let __resource_type = "hcloud_placement_group" in
  let __resource = { id; labels; name; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_placement_group __resource);
  ()
