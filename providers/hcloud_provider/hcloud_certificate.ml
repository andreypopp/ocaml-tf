(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_certificate = {
  certificate : string;  (** certificate *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
  private_key : string;  (** private_key *)
}
[@@deriving yojson_of]
(** hcloud_certificate *)

let hcloud_certificate ?id ?labels ~certificate ~name ~private_key
    __resource_id =
  let __resource_type = "hcloud_certificate" in
  let __resource = { certificate; id; labels; name; private_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_certificate __resource);
  ()
