(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_resource_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_resource_policy *)

type t = {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

let aws_redshiftserverless_resource_policy ?id ~policy ~resource_arn
    __resource_id =
  let __resource_type = "aws_redshiftserverless_resource_policy" in
  let __resource =
    ({ id; policy; resource_arn }
      : aws_redshiftserverless_resource_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_resource_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
     }
      : t)
  in
  __resource_attributes
