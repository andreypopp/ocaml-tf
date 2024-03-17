(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_stream = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_stream *)

type t = {
  arn : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
}

let aws_cloudwatch_log_stream ?id ~log_group_name ~name __resource_id
    =
  let __resource_type = "aws_cloudwatch_log_stream" in
  let __resource =
    ({ id; log_group_name; name } : aws_cloudwatch_log_stream)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
