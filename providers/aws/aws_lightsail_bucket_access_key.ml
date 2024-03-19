(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket_access_key = {
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket_access_key *)

let aws_lightsail_bucket_access_key ?id ~bucket_name () :
    aws_lightsail_bucket_access_key =
  { bucket_name; id }

type t = {
  access_key_id : string prop;
  bucket_name : string prop;
  created_at : string prop;
  id : string prop;
  secret_access_key : string prop;
  status : string prop;
}

let register ?tf_module ?id ~bucket_name __resource_id =
  let __resource_type = "aws_lightsail_bucket_access_key" in
  let __resource =
    aws_lightsail_bucket_access_key ?id ~bucket_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket_access_key __resource);
  let __resource_attributes =
    ({
       access_key_id =
         Prop.computed __resource_type __resource_id "access_key_id";
       bucket_name =
         Prop.computed __resource_type __resource_id "bucket_name";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       secret_access_key =
         Prop.computed __resource_type __resource_id
           "secret_access_key";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
