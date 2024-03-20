(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_record = {
  domain : string prop;  (** domain *)
  flags : float prop option; [@option]  (** flags *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  port : float prop option; [@option]  (** port *)
  priority : float prop option; [@option]  (** priority *)
  tag : string prop option; [@option]  (** tag *)
  ttl : float prop option; [@option]  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** digitalocean_record *)

let digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value () : digitalocean_record =
  {
    domain;
    flags;
    id;
    name;
    port;
    priority;
    tag;
    ttl;
    type_;
    value;
    weight;
  }

type t = {
  domain : string prop;
  flags : float prop;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  priority : float prop;
  tag : string prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  weight : float prop;
}

let make ?flags ?id ?port ?priority ?tag ?ttl ?weight ~domain ~name
    ~type_ ~value __id =
  let __type = "digitalocean_record" in
  let __attrs =
    ({
       domain = Prop.computed __type __id "domain";
       flags = Prop.computed __type __id "flags";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       priority = Prop.computed __type __id "priority";
       tag = Prop.computed __type __id "tag";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_record
        (digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl
           ?weight ~domain ~name ~type_ ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value __id =
  let (r : _ Tf_core.resource) =
    make ?flags ?id ?port ?priority ?tag ?ttl ?weight ~domain ~name
      ~type_ ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
