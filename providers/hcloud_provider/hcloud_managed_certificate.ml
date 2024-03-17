(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_managed_certificate = {
  domain_names : string list;  (** domain_names *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** hcloud_managed_certificate *)

let hcloud_managed_certificate ?labels ~domain_names ~name
    __resource_id =
  let __resource_type = "hcloud_managed_certificate" in
  let __resource = { domain_names; labels; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_managed_certificate __resource);
  ()
