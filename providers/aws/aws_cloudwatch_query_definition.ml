(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_query_definition = {
  id : string prop option; [@option]  (** id *)
  log_group_names : string prop list option; [@option]
      (** log_group_names *)
  name : string prop;  (** name *)
  query_string : string prop;  (** query_string *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_query_definition *)

type t = {
  id : string prop;
  log_group_names : string list prop;
  name : string prop;
  query_definition_id : string prop;
  query_string : string prop;
}

let aws_cloudwatch_query_definition ?id ?log_group_names ~name
    ~query_string __resource_id =
  let __resource_type = "aws_cloudwatch_query_definition" in
  let __resource =
    ({ id; log_group_names; name; query_string }
      : aws_cloudwatch_query_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_query_definition __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       log_group_names =
         Prop.computed __resource_type __resource_id
           "log_group_names";
       name = Prop.computed __resource_type __resource_id "name";
       query_definition_id =
         Prop.computed __resource_type __resource_id
           "query_definition_id";
       query_string =
         Prop.computed __resource_type __resource_id "query_string";
     }
      : t)
  in
  __resource_attributes
