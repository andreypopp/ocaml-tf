(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivs_recording_configuration__destination_configuration__s3 = {
  bucket_name : string prop;  (** bucket_name *)
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__destination_configuration__s3 *)

type aws_ivs_recording_configuration__destination_configuration = {
  s3 :
    aws_ivs_recording_configuration__destination_configuration__s3
    list;
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__destination_configuration *)

type aws_ivs_recording_configuration__thumbnail_configuration = {
  recording_mode : string prop option; [@option]
      (** recording_mode *)
  target_interval_seconds : float prop option; [@option]
      (** target_interval_seconds *)
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__thumbnail_configuration *)

type aws_ivs_recording_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__timeouts *)

type aws_ivs_recording_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  recording_reconnect_window_seconds : float prop option; [@option]
      (** recording_reconnect_window_seconds *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_configuration :
    aws_ivs_recording_configuration__destination_configuration list;
  thumbnail_configuration :
    aws_ivs_recording_configuration__thumbnail_configuration list;
  timeouts : aws_ivs_recording_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  recording_reconnect_window_seconds : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_ivs_recording_configuration ?id ?name
    ?recording_reconnect_window_seconds ?tags ?tags_all ?timeouts
    ~destination_configuration ~thumbnail_configuration __resource_id
    =
  let __resource_type = "aws_ivs_recording_configuration" in
  let __resource =
    ({
       id;
       name;
       recording_reconnect_window_seconds;
       tags;
       tags_all;
       destination_configuration;
       thumbnail_configuration;
       timeouts;
     }
      : aws_ivs_recording_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_recording_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recording_reconnect_window_seconds =
         Prop.computed __resource_type __resource_id
           "recording_reconnect_window_seconds";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
