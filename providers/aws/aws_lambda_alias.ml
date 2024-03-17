(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_alias__routing_config = {
  additional_version_weights : (string * float prop) list option;
      [@option]
      (** additional_version_weights *)
}
[@@deriving yojson_of]
(** aws_lambda_alias__routing_config *)

type aws_lambda_alias = {
  description : string prop option; [@option]  (** description *)
  function_name : string prop;  (** function_name *)
  function_version : string prop;  (** function_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_config : aws_lambda_alias__routing_config list;
}
[@@deriving yojson_of]
(** aws_lambda_alias *)

type t = {
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

let aws_lambda_alias ?description ?id ~function_name
    ~function_version ~name ~routing_config __resource_id =
  let __resource_type = "aws_lambda_alias" in
  let __resource =
    ({
       description;
       function_name;
       function_version;
       id;
       name;
       routing_config;
     }
      : aws_lambda_alias)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_alias __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       function_version =
         Prop.computed __resource_type __resource_id
           "function_version";
       id = Prop.computed __resource_type __resource_id "id";
       invoke_arn =
         Prop.computed __resource_type __resource_id "invoke_arn";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
