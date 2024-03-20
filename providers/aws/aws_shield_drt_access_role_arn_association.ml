(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?timeouts ~role_arn __id =
  let __type = "aws_shield_drt_access_role_arn_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_drt_access_role_arn_association
        (aws_shield_drt_access_role_arn_association ?timeouts
           ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~role_arn __id =
  let (r : _ Tf_core.resource) = make ?timeouts ~role_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
