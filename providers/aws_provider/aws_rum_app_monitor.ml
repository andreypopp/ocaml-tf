(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rum_app_monitor__app_monitor_configuration = {
  allow_cookies : bool option; [@option]  (** allow_cookies *)
  enable_xray : bool option; [@option]  (** enable_xray *)
  excluded_pages : string list option; [@option]
      (** excluded_pages *)
  favorite_pages : string list option; [@option]
      (** favorite_pages *)
  guest_role_arn : string option; [@option]  (** guest_role_arn *)
  identity_pool_id : string option; [@option]
      (** identity_pool_id *)
  included_pages : string list option; [@option]
      (** included_pages *)
  session_sample_rate : float option; [@option]
      (** session_sample_rate *)
  telemetries : string list option; [@option]  (** telemetries *)
}
[@@deriving yojson_of]
(** aws_rum_app_monitor__app_monitor_configuration *)

type aws_rum_app_monitor__custom_events = {
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_rum_app_monitor__custom_events *)

type aws_rum_app_monitor = {
  cw_log_enabled : bool option; [@option]  (** cw_log_enabled *)
  domain : string;  (** domain *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  app_monitor_configuration :
    aws_rum_app_monitor__app_monitor_configuration list;
  custom_events : aws_rum_app_monitor__custom_events list;
}
[@@deriving yojson_of]
(** aws_rum_app_monitor *)

let aws_rum_app_monitor ?cw_log_enabled ?tags ~domain ~name
    ~app_monitor_configuration ~custom_events __resource_id =
  let __resource_type = "aws_rum_app_monitor" in
  let __resource =
    {
      cw_log_enabled;
      domain;
      name;
      tags;
      app_monitor_configuration;
      custom_events;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rum_app_monitor __resource);
  ()
