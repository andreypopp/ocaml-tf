(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rum_app_monitor__app_monitor_configuration = {
  allow_cookies : bool prop option; [@option]  (** allow_cookies *)
  enable_xray : bool prop option; [@option]  (** enable_xray *)
  excluded_pages : string prop list option; [@option]
      (** excluded_pages *)
  favorite_pages : string prop list option; [@option]
      (** favorite_pages *)
  guest_role_arn : string prop option; [@option]
      (** guest_role_arn *)
  identity_pool_id : string prop option; [@option]
      (** identity_pool_id *)
  included_pages : string prop list option; [@option]
      (** included_pages *)
  session_sample_rate : float prop option; [@option]
      (** session_sample_rate *)
  telemetries : string prop list option; [@option]  (** telemetries *)
}
[@@deriving yojson_of]
(** aws_rum_app_monitor__app_monitor_configuration *)

type aws_rum_app_monitor__custom_events = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_rum_app_monitor__custom_events *)

type aws_rum_app_monitor = {
  cw_log_enabled : bool prop option; [@option]  (** cw_log_enabled *)
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  app_monitor_configuration :
    aws_rum_app_monitor__app_monitor_configuration list;
  custom_events : aws_rum_app_monitor__custom_events list;
}
[@@deriving yojson_of]
(** aws_rum_app_monitor *)

let aws_rum_app_monitor ?cw_log_enabled ?id ?tags ?tags_all ~domain
    ~name ~app_monitor_configuration ~custom_events __resource_id =
  let __resource_type = "aws_rum_app_monitor" in
  let __resource =
    {
      cw_log_enabled;
      domain;
      id;
      name;
      tags;
      tags_all;
      app_monitor_configuration;
      custom_events;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rum_app_monitor __resource);
  ()
