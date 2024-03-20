(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_key_pair = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  pgp_key : string prop option; [@option]  (** pgp_key *)
  public_key : string prop option; [@option]  (** public_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_key_pair *)

let aws_lightsail_key_pair ?id ?name ?name_prefix ?pgp_key
    ?public_key ?tags ?tags_all () : aws_lightsail_key_pair =
  { id; name; name_prefix; pgp_key; public_key; tags; tags_all }

type t = {
  arn : string prop;
  encrypted_fingerprint : string prop;
  encrypted_private_key : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  pgp_key : string prop;
  private_key : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?name_prefix ?pgp_key ?public_key ?tags ?tags_all
    __id =
  let __type = "aws_lightsail_key_pair" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       encrypted_fingerprint =
         Prop.computed __type __id "encrypted_fingerprint";
       encrypted_private_key =
         Prop.computed __type __id "encrypted_private_key";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       pgp_key = Prop.computed __type __id "pgp_key";
       private_key = Prop.computed __type __id "private_key";
       public_key = Prop.computed __type __id "public_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_key_pair
        (aws_lightsail_key_pair ?id ?name ?name_prefix ?pgp_key
           ?public_key ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?pgp_key ?public_key
    ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?pgp_key ?public_key ?tags ?tags_all
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
