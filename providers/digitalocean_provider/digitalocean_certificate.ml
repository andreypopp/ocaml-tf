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

type t = {
  certificate_chain : string prop;
  domains : string list prop;
  id : string prop;
  leaf_certificate : string prop;
  name : string prop;
  not_after : string prop;
  private_key : string prop;
  sha1_fingerprint : string prop;
  state : string prop;
  type_ : string prop;
  uuid : string prop;
}

let digitalocean_certificate ?certificate_chain ?domains ?id
    ?leaf_certificate ?private_key ?type_ ~name __resource_id =
  let __resource_type = "digitalocean_certificate" in
  let __resource =
    ({
       certificate_chain;
       domains;
       id;
       leaf_certificate;
       name;
       private_key;
       type_;
     }
      : digitalocean_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_certificate __resource);
  let __resource_attributes =
    ({
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       domains =
         Prop.computed __resource_type __resource_id "domains";
       id = Prop.computed __resource_type __resource_id "id";
       leaf_certificate =
         Prop.computed __resource_type __resource_id
           "leaf_certificate";
       name = Prop.computed __resource_type __resource_id "name";
       not_after =
         Prop.computed __resource_type __resource_id "not_after";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       sha1_fingerprint =
         Prop.computed __resource_type __resource_id
           "sha1_fingerprint";
       state = Prop.computed __resource_type __resource_id "state";
       type_ = Prop.computed __resource_type __resource_id "type";
       uuid = Prop.computed __resource_type __resource_id "uuid";
     }
      : t)
  in
  __resource_attributes
