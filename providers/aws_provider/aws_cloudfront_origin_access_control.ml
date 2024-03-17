(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_origin_access_control = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  origin_access_control_origin_type : string prop;
      (** origin_access_control_origin_type *)
  signing_behavior : string prop;  (** signing_behavior *)
  signing_protocol : string prop;  (** signing_protocol *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_control *)

let aws_cloudfront_origin_access_control ?description ?id ~name
    ~origin_access_control_origin_type ~signing_behavior
    ~signing_protocol __resource_id =
  let __resource_type = "aws_cloudfront_origin_access_control" in
  let __resource =
    {
      description;
      id;
      name;
      origin_access_control_origin_type;
      signing_behavior;
      signing_protocol;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_origin_access_control __resource);
  ()
