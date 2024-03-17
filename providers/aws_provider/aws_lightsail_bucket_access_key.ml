(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket_access_key = {
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket_access_key *)

let aws_lightsail_bucket_access_key ?id ~bucket_name __resource_id =
  let __resource_type = "aws_lightsail_bucket_access_key" in
  let __resource = { bucket_name; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket_access_key __resource);
  ()
