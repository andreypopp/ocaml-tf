(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_stream_consumer = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_stream_consumer *)

type t = {
  arn : string prop;
  creation_timestamp : string prop;
  id : string prop;
  name : string prop;
  stream_arn : string prop;
}

let aws_kinesis_stream_consumer ?id ~name ~stream_arn __resource_id =
  let __resource_type = "aws_kinesis_stream_consumer" in
  let __resource =
    ({ id; name; stream_arn } : aws_kinesis_stream_consumer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_stream_consumer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       stream_arn =
         Prop.computed __resource_type __resource_id "stream_arn";
     }
      : t)
  in
  __resource_attributes
