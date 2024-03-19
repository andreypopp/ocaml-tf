(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_shield_drt_access_role_arn_association = {
  role_arn : string prop;  (** role_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_shield_drt_access_role_arn_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_shield_drt_access_role_arn_association ?timeouts ~role_arn ()
    : aws_shield_drt_access_role_arn_association =
  { role_arn; timeouts }

type t = { id : string prop; role_arn : string prop }

let register ?tf_module ?timeouts ~role_arn __resource_id =
  let __resource_type =
    "aws_shield_drt_access_role_arn_association"
  in
  let __resource =
    aws_shield_drt_access_role_arn_association ?timeouts ~role_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_drt_access_role_arn_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
