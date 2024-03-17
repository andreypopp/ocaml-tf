(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grants_instance = {
  account_id : string prop option; [@option]  (** account_id *)
  identity_center_arn : string prop option; [@option]
      (** identity_center_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance *)

let aws_s3control_access_grants_instance ?account_id
    ?identity_center_arn ?tags __resource_id =
  let __resource_type = "aws_s3control_access_grants_instance" in
  let __resource = { account_id; identity_center_arn; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_instance __resource);
  ()
