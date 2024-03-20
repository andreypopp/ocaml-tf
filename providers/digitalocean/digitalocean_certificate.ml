(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ?leaf_certificate ?private_key ?type_ ~name () :
    digitalocean_certificate =
  {
    certificate_chain;
    domains;
    id;
    leaf_certificate;
    name;
    private_key;
    type_;
  }

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

let make ?certificate_chain ?domains ?id ?leaf_certificate
    ?private_key ?type_ ~name __id =
  let __type = "digitalocean_certificate" in
  let __attrs =
    ({
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       leaf_certificate =
         Prop.computed __type __id "leaf_certificate";
       name = Prop.computed __type __id "name";
       not_after = Prop.computed __type __id "not_after";
       private_key = Prop.computed __type __id "private_key";
       sha1_fingerprint =
         Prop.computed __type __id "sha1_fingerprint";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_certificate
        (digitalocean_certificate ?certificate_chain ?domains ?id
           ?leaf_certificate ?private_key ?type_ ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?domains ?id
    ?leaf_certificate ?private_key ?type_ ~name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?domains ?id ?leaf_certificate
      ?private_key ?type_ ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
