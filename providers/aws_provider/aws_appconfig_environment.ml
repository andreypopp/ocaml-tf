(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_environment__monitor = {
  alarm_arn : string;  (** alarm_arn *)
  alarm_role_arn : string option; [@option]  (** alarm_role_arn *)
}
[@@deriving yojson_of]
(** aws_appconfig_environment__monitor *)

type aws_appconfig_environment = {
  application_id : string;  (** application_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  monitor : aws_appconfig_environment__monitor list;
}
[@@deriving yojson_of]
(** aws_appconfig_environment *)

let aws_appconfig_environment ?tags ~application_id ~name ~monitor
    __resource_id =
  let __resource_type = "aws_appconfig_environment" in
  let __resource = { application_id; name; tags; monitor } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_environment __resource);
  ()
