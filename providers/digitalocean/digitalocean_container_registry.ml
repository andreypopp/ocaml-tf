(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?region ~name ~subscription_tier_slug __id =
  let __type = "digitalocean_container_registry" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       server_url = Prop.computed __type __id "server_url";
       storage_usage_bytes =
         Prop.computed __type __id "storage_usage_bytes";
       subscription_tier_slug =
         Prop.computed __type __id "subscription_tier_slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_container_registry
        (digitalocean_container_registry ?id ?region ~name
           ~subscription_tier_slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?region ~name ~subscription_tier_slug
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?region ~name ~subscription_tier_slug __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
