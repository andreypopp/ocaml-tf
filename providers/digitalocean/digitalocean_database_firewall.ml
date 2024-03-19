(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~cluster_id ~rule __resource_id =
  let __resource_type = "digitalocean_database_firewall" in
  let __resource =
    digitalocean_database_firewall ?id ~cluster_id ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_firewall __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
