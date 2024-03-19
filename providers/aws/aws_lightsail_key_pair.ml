(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?name ?name_prefix ?pgp_key ?public_key
    ?tags ?tags_all __resource_id =
  let __resource_type = "aws_lightsail_key_pair" in
  let __resource =
    aws_lightsail_key_pair ?id ?name ?name_prefix ?pgp_key
      ?public_key ?tags ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_key_pair __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       encrypted_fingerprint =
         Prop.computed __resource_type __resource_id
           "encrypted_fingerprint";
       encrypted_private_key =
         Prop.computed __resource_type __resource_id
           "encrypted_private_key";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       pgp_key =
         Prop.computed __resource_type __resource_id "pgp_key";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
