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
    ~resource_name () : aws_lightsail_bucket_resource_access =
  { bucket_name; id; resource_name }

type t = {
  bucket_name : string prop;
  id : string prop;
  resource_name : string prop;
}

let register ?tf_module ?id ~bucket_name ~resource_name __resource_id
    =
  let __resource_type = "aws_lightsail_bucket_resource_access" in
  let __resource =
    aws_lightsail_bucket_resource_access ?id ~bucket_name
      ~resource_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket_resource_access __resource);
  let __resource_attributes =
    ({
       bucket_name =
         Prop.computed __resource_type __resource_id "bucket_name";
       id = Prop.computed __resource_type __resource_id "id";
       resource_name =
         Prop.computed __resource_type __resource_id "resource_name";
     }
      : t)
  in
  __resource_attributes
