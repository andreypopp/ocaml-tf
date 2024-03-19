(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_webhook = {
  app_id : string prop;  (** app_id *)
  branch_name : string prop;  (** branch_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_amplify_webhook *)

let aws_amplify_webhook ?description ?id ~app_id ~branch_name () :
    aws_amplify_webhook =
  { app_id; branch_name; description; id }

type t = {
  app_id : string prop;
  arn : string prop;
  branch_name : string prop;
  description : string prop;
  id : string prop;
  url : string prop;
}

let register ?tf_module ?description ?id ~app_id ~branch_name
    __resource_id =
  let __resource_type = "aws_amplify_webhook" in
  let __resource =
    aws_amplify_webhook ?description ?id ~app_id ~branch_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_webhook __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       branch_name =
         Prop.computed __resource_type __resource_id "branch_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
