(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_registry_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  registry_name : string prop;  (** registry_name *)
}
[@@deriving yojson_of]
(** aws_schemas_registry_policy *)

let aws_schemas_registry_policy ?id ~policy ~registry_name () :
    aws_schemas_registry_policy =
  { id; policy; registry_name }

type t = {
  id : string prop;
  policy : string prop;
  registry_name : string prop;
}

let register ?tf_module ?id ~policy ~registry_name __resource_id =
  let __resource_type = "aws_schemas_registry_policy" in
  let __resource =
    aws_schemas_registry_policy ?id ~policy ~registry_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_registry_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
     }
      : t)
  in
  __resource_attributes
