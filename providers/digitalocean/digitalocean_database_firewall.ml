(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** rule *)

type digitalocean_database_firewall = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** digitalocean_database_firewall *)

let rule ~type_ ~value () : rule = { type_; value }

let digitalocean_database_firewall ?id ~cluster_id ~rule () :
    digitalocean_database_firewall =
  { cluster_id; id; rule }

type t = { cluster_id : string prop; id : string prop }

let make ?id ~cluster_id ~rule __id =
  let __type = "digitalocean_database_firewall" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_firewall
        (digitalocean_database_firewall ?id ~cluster_id ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
