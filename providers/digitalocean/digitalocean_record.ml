(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value __resource_id =
  let __resource_type = "digitalocean_record" in
  let __resource =
    ({
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
      : digitalocean_record)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_record __resource);
  let __resource_attributes =
    ({
       domain = Prop.computed __resource_type __resource_id "domain";
       flags = Prop.computed __resource_type __resource_id "flags";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       tag = Prop.computed __resource_type __resource_id "tag";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       type_ = Prop.computed __resource_type __resource_id "type";
       value = Prop.computed __resource_type __resource_id "value";
       weight = Prop.computed __resource_type __resource_id "weight";
     }
      : t)
  in
  __resource_attributes
