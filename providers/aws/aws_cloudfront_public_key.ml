(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_public_key = {
  comment : string prop option; [@option]  (** comment *)
  encoded_key : string prop;  (** encoded_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
}
[@@deriving yojson_of]
(** aws_cloudfront_public_key *)

let aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
    ~encoded_key () : aws_cloudfront_public_key =
  { comment; encoded_key; id; name; name_prefix }

type t = {
  caller_reference : string prop;
  comment : string prop;
  encoded_key : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

let register ?tf_module ?comment ?id ?name ?name_prefix ~encoded_key
    __resource_id =
  let __resource_type = "aws_cloudfront_public_key" in
  let __resource =
    aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
      ~encoded_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_public_key __resource);
  let __resource_attributes =
    ({
       caller_reference =
         Prop.computed __resource_type __resource_id
           "caller_reference";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       encoded_key =
         Prop.computed __resource_type __resource_id "encoded_key";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
     }
      : t)
  in
  __resource_attributes
