(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type hcloud_volume = {
  automount : bool option; [@option]  (** automount *)
  delete_protection : bool option; [@option]
      (** delete_protection *)
  format : string option; [@option]  (** format *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
  size : float;  (** size *)
}
[@@deriving yojson_of]
(** hcloud_volume *)

let hcloud_volume ?automount ?delete_protection ?format ?labels ~name
    ~size __resource_id =
  let __resource_type = "hcloud_volume" in
  let __resource =
    { automount; delete_protection; format; labels; name; size }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_volume __resource);
  ()
