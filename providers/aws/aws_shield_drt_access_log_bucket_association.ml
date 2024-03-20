(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_shield_drt_access_log_bucket_association = {
  log_bucket : string prop;  (** log_bucket *)
  role_arn_association_id : string prop;  (** Unused *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_shield_drt_access_log_bucket_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_shield_drt_access_log_bucket_association ?timeouts
    ~log_bucket ~role_arn_association_id () :
    aws_shield_drt_access_log_bucket_association =
  { log_bucket; role_arn_association_id; timeouts }

type t = {
  id : string prop;
  log_bucket : string prop;
  role_arn_association_id : string prop;
}

let make ?timeouts ~log_bucket ~role_arn_association_id __id =
  let __type = "aws_shield_drt_access_log_bucket_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_bucket = Prop.computed __type __id "log_bucket";
       role_arn_association_id =
         Prop.computed __type __id "role_arn_association_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_drt_access_log_bucket_association
        (aws_shield_drt_access_log_bucket_association ?timeouts
           ~log_bucket ~role_arn_association_id ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~log_bucket
    ~role_arn_association_id __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~log_bucket ~role_arn_association_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
