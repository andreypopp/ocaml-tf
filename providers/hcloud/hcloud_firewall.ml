(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type apply_to = {
  label_selector : string prop option; [@option]
      (** label_selector *)
  server : float prop option; [@option]  (** server *)
}
[@@deriving yojson_of]
(** apply_to *)

type rule = {
  description : string prop option; [@option]  (** description *)
  destination_ips : string prop list option; [@option]
      (** destination_ips *)
  direction : string prop;  (** direction *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  source_ips : string prop list option; [@option]  (** source_ips *)
}
[@@deriving yojson_of]
(** rule *)

type hcloud_firewall = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  apply_to : apply_to list;
  rule : rule list;
}
[@@deriving yojson_of]
(** hcloud_firewall *)

let apply_to ?label_selector ?server () : apply_to =
  { label_selector; server }

let rule ?description ?destination_ips ?port ?source_ips ~direction
    ~protocol () : rule =
  {
    description;
    destination_ips;
    direction;
    port;
    protocol;
    source_ips;
  }

let hcloud_firewall ?id ?labels ~name ~apply_to ~rule () :
    hcloud_firewall =
  { id; labels; name; apply_to; rule }

type t = {
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
}

let make ?id ?labels ~name ~apply_to ~rule __id =
  let __type = "hcloud_firewall" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewall
        (hcloud_firewall ?id ?labels ~name ~apply_to ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~name ~apply_to ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~name ~apply_to ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
