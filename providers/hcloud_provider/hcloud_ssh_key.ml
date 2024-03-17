(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_ssh_key = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** hcloud_ssh_key *)

let hcloud_ssh_key ?id ?labels ~name ~public_key __resource_id =
  let __resource_type = "hcloud_ssh_key" in
  let __resource = { id; labels; name; public_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_ssh_key __resource);
  ()
