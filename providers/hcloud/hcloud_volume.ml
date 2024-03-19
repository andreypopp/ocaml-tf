(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_volume = {
  automount : bool prop option; [@option]  (** automount *)
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  format : string prop option; [@option]  (** format *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  server_id : float prop option; [@option]  (** server_id *)
  size : float prop;  (** size *)
}
[@@deriving yojson_of]
(** hcloud_volume *)

let hcloud_volume ?automount ?delete_protection ?format ?id ?labels
    ?location ?server_id ~name ~size () : hcloud_volume =
  {
    automount;
    delete_protection;
    format;
    id;
    labels;
    location;
    name;
    server_id;
    size;
  }

type t = {
  automount : bool prop;
  delete_protection : bool prop;
  format : string prop;
  id : string prop;
  labels : (string * string) list prop;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  server_id : float prop;
  size : float prop;
}

let register ?tf_module ?automount ?delete_protection ?format ?id
    ?labels ?location ?server_id ~name ~size __resource_id =
  let __resource_type = "hcloud_volume" in
  let __resource =
    hcloud_volume ?automount ?delete_protection ?format ?id ?labels
      ?location ?server_id ~name ~size ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_volume __resource);
  let __resource_attributes =
    ({
       automount =
         Prop.computed __resource_type __resource_id "automount";
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       linux_device =
         Prop.computed __resource_type __resource_id "linux_device";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       size = Prop.computed __resource_type __resource_id "size";
     }
      : t)
  in
  __resource_attributes
