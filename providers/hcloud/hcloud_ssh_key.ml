(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_ssh_key = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** hcloud_ssh_key *)

let hcloud_ssh_key ?id ?labels ~name ~public_key () : hcloud_ssh_key
    =
  { id; labels; name; public_key }

type t = {
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
}

let make ?id ?labels ~name ~public_key __id =
  let __type = "hcloud_ssh_key" in
  let __attrs =
    ({
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_ssh_key
        (hcloud_ssh_key ?id ?labels ~name ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~name ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~name ~public_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
