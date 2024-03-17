(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_app__campaign_hook = {
  lambda_function_name : string option; [@option]
      (** lambda_function_name *)
  mode : string option; [@option]  (** mode *)
  web_url : string option; [@option]  (** web_url *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__campaign_hook *)

type aws_pinpoint_app__limits = {
  daily : float option; [@option]  (** daily *)
  maximum_duration : float option; [@option]  (** maximum_duration *)
  messages_per_second : float option; [@option]
      (** messages_per_second *)
  total : float option; [@option]  (** total *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__limits *)

type aws_pinpoint_app__quiet_time = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__quiet_time *)

type aws_pinpoint_app = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  campaign_hook : aws_pinpoint_app__campaign_hook list;
  limits : aws_pinpoint_app__limits list;
  quiet_time : aws_pinpoint_app__quiet_time list;
}
[@@deriving yojson_of]
(** aws_pinpoint_app *)

let aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
    ~campaign_hook ~limits ~quiet_time __resource_id =
  let __resource_type = "aws_pinpoint_app" in
  let __resource =
    {
      id;
      name;
      name_prefix;
      tags;
      tags_all;
      campaign_hook;
      limits;
      quiet_time;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_app __resource);
  ()
