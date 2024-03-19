(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_container_registry = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  region : string prop option; [@option]  (** region *)
  subscription_tier_slug : string prop;  (** subscription_tier_slug *)
}
[@@deriving yojson_of]
(** digitalocean_container_registry *)

let digitalocean_container_registry ?id ?region ~name
    ~subscription_tier_slug () : digitalocean_container_registry =
  { id; name; region; subscription_tier_slug }

type t = {
  created_at : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  server_url : string prop;
  storage_usage_bytes : float prop;
  subscription_tier_slug : string prop;
}

let register ?tf_module ?id ?region ~name ~subscription_tier_slug
    __resource_id =
  let __resource_type = "digitalocean_container_registry" in
  let __resource =
    digitalocean_container_registry ?id ?region ~name
      ~subscription_tier_slug ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_container_registry __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       server_url =
         Prop.computed __resource_type __resource_id "server_url";
       storage_usage_bytes =
         Prop.computed __resource_type __resource_id
           "storage_usage_bytes";
       subscription_tier_slug =
         Prop.computed __resource_type __resource_id
           "subscription_tier_slug";
     }
      : t)
  in
  __resource_attributes
