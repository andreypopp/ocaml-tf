(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type hcloud_snapshot = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  server_id : float prop;  (** server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** hcloud_snapshot *)

let timeouts ?create () : timeouts = { create }

let hcloud_snapshot ?description ?id ?labels ?timeouts ~server_id ()
    : hcloud_snapshot =
  { description; id; labels; server_id; timeouts }

type t = {
  description : string prop;
  id : string prop;
  labels : (string * string) list prop;
  server_id : float prop;
}

let register ?tf_module ?description ?id ?labels ?timeouts ~server_id
    __resource_id =
  let __resource_type = "hcloud_snapshot" in
  let __resource =
    hcloud_snapshot ?description ?id ?labels ?timeouts ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_snapshot __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes
