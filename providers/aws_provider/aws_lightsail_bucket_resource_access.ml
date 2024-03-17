(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket_resource_access = {
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
  resource_name : string prop;  (** resource_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket_resource_access *)

let aws_lightsail_bucket_resource_access ?id ~bucket_name
    ~resource_name __resource_id =
  let __resource_type = "aws_lightsail_bucket_resource_access" in
  let __resource = { bucket_name; id; resource_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket_resource_access __resource);
  ()
