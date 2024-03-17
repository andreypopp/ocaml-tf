(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_floating_ip = {
  delete_protection : bool option; [@option]
      (** delete_protection *)
  description : string option; [@option]  (** description *)
  labels : (string * string) list option; [@option]  (** labels *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip *)

let hcloud_floating_ip ?delete_protection ?description ?labels ~type_
    __resource_id =
  let __resource_type = "hcloud_floating_ip" in
  let __resource =
    { delete_protection; description; labels; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_floating_ip __resource);
  ()
