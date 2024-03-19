(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_floating_ip_assignment = {
  floating_ip_id : float prop;  (** floating_ip_id *)
  id : string prop option; [@option]  (** id *)
  server_id : float prop;  (** server_id *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip_assignment *)

let hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id () :
    hcloud_floating_ip_assignment =
  { floating_ip_id; id; server_id }

type t = {
  floating_ip_id : float prop;
  id : string prop;
  server_id : float prop;
}

let register ?tf_module ?id ~floating_ip_id ~server_id __resource_id
    =
  let __resource_type = "hcloud_floating_ip_assignment" in
  let __resource =
    hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_floating_ip_assignment __resource);
  let __resource_attributes =
    ({
       floating_ip_id =
         Prop.computed __resource_type __resource_id "floating_ip_id";
       id = Prop.computed __resource_type __resource_id "id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes
