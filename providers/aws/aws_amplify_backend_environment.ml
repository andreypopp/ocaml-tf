(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_backend_environment = {
  app_id : string prop;  (** app_id *)
  deployment_artifacts : string prop option; [@option]
      (** deployment_artifacts *)
  environment_name : string prop;  (** environment_name *)
  id : string prop option; [@option]  (** id *)
  stack_name : string prop option; [@option]  (** stack_name *)
}
[@@deriving yojson_of]
(** aws_amplify_backend_environment *)

type t = {
  app_id : string prop;
  arn : string prop;
  deployment_artifacts : string prop;
  environment_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let aws_amplify_backend_environment ?deployment_artifacts ?id
    ?stack_name ~app_id ~environment_name __resource_id =
  let __resource_type = "aws_amplify_backend_environment" in
  let __resource =
    ({
       app_id;
       deployment_artifacts;
       environment_name;
       id;
       stack_name;
     }
      : aws_amplify_backend_environment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_backend_environment __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       deployment_artifacts =
         Prop.computed __resource_type __resource_id
           "deployment_artifacts";
       environment_name =
         Prop.computed __resource_type __resource_id
           "environment_name";
       id = Prop.computed __resource_type __resource_id "id";
       stack_name =
         Prop.computed __resource_type __resource_id "stack_name";
     }
      : t)
  in
  __resource_attributes
