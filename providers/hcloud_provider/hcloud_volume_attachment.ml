(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type hcloud_volume_attachment = {
  server_id : float;  (** server_id *)
  volume_id : float;  (** volume_id *)
}
[@@deriving yojson_of]
(** hcloud_volume_attachment *)

let hcloud_volume_attachment ~server_id ~volume_id __resource_id =
  let __resource_type = "hcloud_volume_attachment" in
  let __resource = { server_id; volume_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_volume_attachment __resource);
  ()
