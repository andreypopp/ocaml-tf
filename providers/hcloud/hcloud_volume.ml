(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?automount ?delete_protection ?format ?id ?labels ?location
    ?server_id ~name ~size __id =
  let __type = "hcloud_volume" in
  let __attrs =
    ({
       automount = Prop.computed __type __id "automount";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       linux_device = Prop.computed __type __id "linux_device";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       size = Prop.computed __type __id "size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volume
        (hcloud_volume ?automount ?delete_protection ?format ?id
           ?labels ?location ?server_id ~name ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?automount ?delete_protection ?format ?id
    ?labels ?location ?server_id ~name ~size __id =
  let (r : _ Tf_core.resource) =
    make ?automount ?delete_protection ?format ?id ?labels ?location
      ?server_id ~name ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
