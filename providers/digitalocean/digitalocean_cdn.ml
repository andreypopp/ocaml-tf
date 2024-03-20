(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_cdn = {
  certificate_id : string prop option; [@option]
      (** ID of a DigitalOcean managed TLS certificate for use with custom domains *)
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  custom_domain : string prop option; [@option]
      (** fully qualified domain name (FQDN) for custom subdomain, (requires certificate_id) *)
  id : string prop option; [@option]  (** id *)
  origin : string prop;
      (** fully qualified domain name (FQDN) for the origin server *)
  ttl : float prop option; [@option]
      (** The amount of time the content is cached in the CDN *)
}
[@@deriving yojson_of]
(** digitalocean_cdn *)

let digitalocean_cdn ?certificate_id ?certificate_name ?custom_domain
    ?id ?ttl ~origin () : digitalocean_cdn =
  {
    certificate_id;
    certificate_name;
    custom_domain;
    id;
    origin;
    ttl;
  }

type t = {
  certificate_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  custom_domain : string prop;
  endpoint : string prop;
  id : string prop;
  origin : string prop;
  ttl : float prop;
}

let make ?certificate_id ?certificate_name ?custom_domain ?id ?ttl
    ~origin __id =
  let __type = "digitalocean_cdn" in
  let __attrs =
    ({
       certificate_id = Prop.computed __type __id "certificate_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       created_at = Prop.computed __type __id "created_at";
       custom_domain = Prop.computed __type __id "custom_domain";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       origin = Prop.computed __type __id "origin";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_cdn
        (digitalocean_cdn ?certificate_id ?certificate_name
           ?custom_domain ?id ?ttl ~origin ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_id ?certificate_name
    ?custom_domain ?id ?ttl ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_id ?certificate_name ?custom_domain ?id ?ttl
      ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
