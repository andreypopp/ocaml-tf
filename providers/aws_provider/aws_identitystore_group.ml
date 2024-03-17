(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_identitystore_group__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_group = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  identity_store_id : string prop;  (** identity_store_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group *)

let aws_identitystore_group ?description ?id ~display_name
    ~identity_store_id __resource_id =
  let __resource_type = "aws_identitystore_group" in
  let __resource =
    { description; display_name; id; identity_store_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_group __resource);
  ()
