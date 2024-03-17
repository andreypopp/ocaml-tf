(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_certificate = {
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  domains : string prop list option; [@option]  (** domains *)
  id : string prop option; [@option]  (** id *)
  leaf_certificate : string prop option; [@option]
      (** leaf_certificate *)
  name : string prop;  (** name *)
  private_key : string prop option; [@option]  (** private_key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** digitalocean_certificate *)

let digitalocean_certificate ?certificate_chain ?domains ?id
    ?leaf_certificate ?private_key ?type_ ~name __resource_id =
  let __resource_type = "digitalocean_certificate" in
  let __resource =
    {
      certificate_chain;
      domains;
      id;
      leaf_certificate;
      name;
      private_key;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_certificate __resource);
  ()
