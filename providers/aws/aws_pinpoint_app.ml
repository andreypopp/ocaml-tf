(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_app__campaign_hook = {
  lambda_function_name : string prop option; [@option]
      (** lambda_function_name *)
  mode : string prop option; [@option]  (** mode *)
  web_url : string prop option; [@option]  (** web_url *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__campaign_hook *)

type aws_pinpoint_app__limits = {
  daily : float prop option; [@option]  (** daily *)
  maximum_duration : float prop option; [@option]
      (** maximum_duration *)
  messages_per_second : float prop option; [@option]
      (** messages_per_second *)
  total : float prop option; [@option]  (** total *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__limits *)

type aws_pinpoint_app__quiet_time = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** aws_pinpoint_app__quiet_time *)

type aws_pinpoint_app = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  campaign_hook : aws_pinpoint_app__campaign_hook list;
  limits : aws_pinpoint_app__limits list;
  quiet_time : aws_pinpoint_app__quiet_time list;
}
[@@deriving yojson_of]
(** aws_pinpoint_app *)

type t = {
  application_id : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
    ~campaign_hook ~limits ~quiet_time __resource_id =
  let __resource_type = "aws_pinpoint_app" in
  let __resource =
    ({
       id;
       name;
       name_prefix;
       tags;
       tags_all;
       campaign_hook;
       limits;
       quiet_time;
     }
      : aws_pinpoint_app)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_app __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
