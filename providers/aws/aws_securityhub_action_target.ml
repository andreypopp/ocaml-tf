(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_action_target = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop;  (** identifier *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_securityhub_action_target *)

let aws_securityhub_action_target ?id ~description ~identifier ~name
    () : aws_securityhub_action_target =
  { description; id; identifier; name }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  identifier : string prop;
  name : string prop;
}

let register ?tf_module ?id ~description ~identifier ~name
    __resource_id =
  let __resource_type = "aws_securityhub_action_target" in
  let __resource =
    aws_securityhub_action_target ?id ~description ~identifier ~name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_action_target __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       identifier =
         Prop.computed __resource_type __resource_id "identifier";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
