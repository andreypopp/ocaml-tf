(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudfront_key_value_store = {
  comment : string prop option; [@option]  (** comment *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudfront_key_value_store *)

let timeouts ?create () : timeouts = { create }

let aws_cloudfront_key_value_store ?comment ?timeouts ~name () :
    aws_cloudfront_key_value_store =
  { comment; name; timeouts }

type t = {
  arn : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
}

let register ?tf_module ?comment ?timeouts ~name __resource_id =
  let __resource_type = "aws_cloudfront_key_value_store" in
  let __resource =
    aws_cloudfront_key_value_store ?comment ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_key_value_store __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_time =
         Prop.computed __resource_type __resource_id
           "last_modified_time";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
