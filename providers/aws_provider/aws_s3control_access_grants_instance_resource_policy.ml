(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grants_instance_resource_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance_resource_policy *)

let aws_s3control_access_grants_instance_resource_policy ?account_id
    ~policy __resource_id =
  let __resource_type =
    "aws_s3control_access_grants_instance_resource_policy"
  in
  let __resource = { account_id; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_instance_resource_policy
       __resource);
  ()
