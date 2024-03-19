(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type definition = { value : string prop  (** value *) }
[@@deriving yojson_of]
(** definition *)

type aws_verifiedpermissions_schema = {
  policy_store_id : string prop;  (** policy_store_id *)
  definition : definition;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_schema *)

let definition ~value () : definition = { value }

let aws_verifiedpermissions_schema ~policy_store_id ~definition () :
    aws_verifiedpermissions_schema =
  { policy_store_id; definition }

type t = {
  id : string prop;
  namespaces : string list prop;
  policy_store_id : string prop;
}

let register ?tf_module ~policy_store_id ~definition __resource_id =
  let __resource_type = "aws_verifiedpermissions_schema" in
  let __resource =
    aws_verifiedpermissions_schema ~policy_store_id ~definition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_schema __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       namespaces =
         Prop.computed __resource_type __resource_id "namespaces";
       policy_store_id =
         Prop.computed __resource_type __resource_id
           "policy_store_id";
     }
      : t)
  in
  __resource_attributes
