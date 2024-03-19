(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_type = {
  api_id : string prop;  (** api_id *)
  definition : string prop;  (** definition *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_type *)

let aws_appsync_type ?id ~api_id ~definition ~format () :
    aws_appsync_type =
  { api_id; definition; format; id }

type t = {
  api_id : string prop;
  arn : string prop;
  definition : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ~api_id ~definition ~format __resource_id
    =
  let __resource_type = "aws_appsync_type" in
  let __resource =
    aws_appsync_type ?id ~api_id ~definition ~format ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_type __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       definition =
         Prop.computed __resource_type __resource_id "definition";
       description =
         Prop.computed __resource_type __resource_id "description";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
