(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~floating_ip_id ~server_id __id =
  let __type = "hcloud_floating_ip_assignment" in
  let __attrs =
    ({
       floating_ip_id = Prop.computed __type __id "floating_ip_id";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ip_assignment
        (hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~floating_ip_id ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~floating_ip_id ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
