(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkfirewall_logging_configuration__logging_configuration__log_destination_config = {
  log_destination : (string * string prop) list;
      (** log_destination *)
  log_destination_type : string prop;  (** log_destination_type *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_logging_configuration__logging_configuration__log_destination_config *)

type aws_networkfirewall_logging_configuration__logging_configuration = {
  log_destination_config :
    aws_networkfirewall_logging_configuration__logging_configuration__log_destination_config
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_logging_configuration__logging_configuration *)

type aws_networkfirewall_logging_configuration = {
  firewall_arn : string prop;  (** firewall_arn *)
  id : string prop option; [@option]  (** id *)
  logging_configuration :
    aws_networkfirewall_logging_configuration__logging_configuration
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_logging_configuration *)

type t = { firewall_arn : string prop; id : string prop }

let aws_networkfirewall_logging_configuration ?id ~firewall_arn
    ~logging_configuration __resource_id =
  let __resource_type =
    "aws_networkfirewall_logging_configuration"
  in
  let __resource =
    ({ firewall_arn; id; logging_configuration }
      : aws_networkfirewall_logging_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkfirewall_logging_configuration __resource);
  let __resource_attributes =
    ({
       firewall_arn =
         Prop.computed __resource_type __resource_id "firewall_arn";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
