(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_record = {
  domain : string;  (** domain *)
  flags : float option; [@option]  (** flags *)
  name : string;  (** name *)
  port : float option; [@option]  (** port *)
  priority : float option; [@option]  (** priority *)
  tag : string option; [@option]  (** tag *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** digitalocean_record *)

let digitalocean_record ?flags ?port ?priority ?tag ?weight ~domain
    ~name ~type_ ~value __resource_id =
  let __resource_type = "digitalocean_record" in
  let __resource =
    {
      domain;
      flags;
      name;
      port;
      priority;
      tag;
      type_;
      value;
      weight;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_record __resource);
  ()
