(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?labels ~name ~apply_to ~rule
    __resource_id =
  let __resource_type = "hcloud_firewall" in
  let __resource =
    hcloud_firewall ?id ?labels ~name ~apply_to ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_firewall __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
