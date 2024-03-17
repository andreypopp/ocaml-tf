(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_identitystore_group__external_ids = {
  id : string;  (** id *)
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_group = {
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  identity_store_id : string;  (** identity_store_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group *)

let aws_identitystore_group ?description ~display_name
    ~identity_store_id __resource_id =
  let __resource_type = "aws_identitystore_group" in
  let __resource =
    { description; display_name; identity_store_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_group __resource);
  ()
