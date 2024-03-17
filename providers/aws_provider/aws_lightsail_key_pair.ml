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
    ?public_key ?tags ?tags_all __resource_id =
  let __resource_type = "aws_lightsail_key_pair" in
  let __resource =
    { id; name; name_prefix; pgp_key; public_key; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_key_pair __resource);
  ()
