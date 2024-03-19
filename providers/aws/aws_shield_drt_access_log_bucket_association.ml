(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?timeouts ~log_bucket
    ~role_arn_association_id __resource_id =
  let __resource_type =
    "aws_shield_drt_access_log_bucket_association"
  in
  let __resource =
    aws_shield_drt_access_log_bucket_association ?timeouts
      ~log_bucket ~role_arn_association_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_drt_access_log_bucket_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       log_bucket =
         Prop.computed __resource_type __resource_id "log_bucket";
       role_arn_association_id =
         Prop.computed __resource_type __resource_id
           "role_arn_association_id";
     }
      : t)
  in
  __resource_attributes
