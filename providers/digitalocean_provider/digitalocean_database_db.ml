(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_db = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_database_db *)

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
}

let digitalocean_database_db ?id ~cluster_id ~name __resource_id =
  let __resource_type = "digitalocean_database_db" in
  let __resource =
    ({ cluster_id; id; name } : digitalocean_database_db)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_db __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
