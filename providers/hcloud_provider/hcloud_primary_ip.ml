(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_primary_ip = {
  assignee_type : string;  (** assignee_type *)
  auto_delete : bool;  (** auto_delete *)
  delete_protection : bool option; [@option]
      (** delete_protection *)
  labels : (string * string) list option; [@option]  (** labels *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_primary_ip *)

let hcloud_primary_ip ?delete_protection ?labels ~assignee_type
    ~auto_delete ~type_ __resource_id =
  let __resource_type = "hcloud_primary_ip" in
  let __resource =
    { assignee_type; auto_delete; delete_protection; labels; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_primary_ip __resource);
  ()
