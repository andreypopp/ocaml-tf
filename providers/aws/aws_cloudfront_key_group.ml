(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_key_group = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  items : string prop list;  (** items *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudfront_key_group *)

type t = {
  comment : string prop;
  etag : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
}

let aws_cloudfront_key_group ?comment ?id ~items ~name __resource_id
    =
  let __resource_type = "aws_cloudfront_key_group" in
  let __resource =
    ({ comment; id; items; name } : aws_cloudfront_key_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_key_group __resource);
  let __resource_attributes =
    ({
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       items = Prop.computed __resource_type __resource_id "items";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
