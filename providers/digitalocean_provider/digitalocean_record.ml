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

let digitalocean_record ?flags ?id ?port ?priority ?tag ?ttl ?weight
    ~domain ~name ~type_ ~value __resource_id =
  let __resource_type = "digitalocean_record" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_record __resource);
  ()
