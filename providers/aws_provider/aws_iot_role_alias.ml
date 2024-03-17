(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_role_alias = {
  alias : string;  (** alias *)
  credential_duration : float option; [@option]
      (** credential_duration *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iot_role_alias *)

let aws_iot_role_alias ?credential_duration ?tags ~alias ~role_arn
    __resource_id =
  let __resource_type = "aws_iot_role_alias" in
  let __resource = { alias; credential_duration; role_arn; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_role_alias __resource);
  ()
