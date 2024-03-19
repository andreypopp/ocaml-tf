(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type external_ids = {
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
    ~identity_store_id () : aws_identitystore_group =
  { description; display_name; id; identity_store_id }

type t = {
  description : string prop;
  display_name : string prop;
  external_ids : external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

let register ?tf_module ?description ?id ~display_name
    ~identity_store_id __resource_id =
  let __resource_type = "aws_identitystore_group" in
  let __resource =
    aws_identitystore_group ?description ?id ~display_name
      ~identity_store_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       external_ids =
         Prop.computed __resource_type __resource_id "external_ids";
       group_id =
         Prop.computed __resource_type __resource_id "group_id";
       id = Prop.computed __resource_type __resource_id "id";
       identity_store_id =
         Prop.computed __resource_type __resource_id
           "identity_store_id";
     }
      : t)
  in
  __resource_attributes
