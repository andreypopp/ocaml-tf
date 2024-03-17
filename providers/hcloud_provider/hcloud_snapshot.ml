(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type hcloud_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** hcloud_snapshot__timeouts *)

type hcloud_snapshot = {
  description : string option; [@option]  (** description *)
  labels : (string * string) list option; [@option]  (** labels *)
  server_id : float;  (** server_id *)
  timeouts : hcloud_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** hcloud_snapshot *)

let hcloud_snapshot ?description ?labels ?timeouts ~server_id
    __resource_id =
  let __resource_type = "hcloud_snapshot" in
  let __resource = { description; labels; server_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_snapshot __resource);
  ()
