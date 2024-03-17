(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_primary_ip = {
  assignee_id : float option; [@option]  (** assignee_id *)
  assignee_type : string;  (** assignee_type *)
  auto_delete : bool;  (** auto_delete *)
  datacenter : string option; [@option]  (** datacenter *)
  delete_protection : bool option; [@option]
      (** delete_protection *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string option; [@option]  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_primary_ip *)

let hcloud_primary_ip ?assignee_id ?datacenter ?delete_protection ?id
    ?labels ?name ~assignee_type ~auto_delete ~type_ __resource_id =
  let __resource_type = "hcloud_primary_ip" in
  let __resource =
    {
      assignee_id;
      assignee_type;
      auto_delete;
      datacenter;
      delete_protection;
      id;
      labels;
      name;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_primary_ip __resource);
  ()
