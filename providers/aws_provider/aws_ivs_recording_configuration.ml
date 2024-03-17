(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivs_recording_configuration__destination_configuration__s3 = {
  bucket_name : string;  (** bucket_name *)
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
  recording_mode : string option; [@option]  (** recording_mode *)
  target_interval_seconds : float option; [@option]
      (** target_interval_seconds *)
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__thumbnail_configuration *)

type aws_ivs_recording_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration__timeouts *)

type aws_ivs_recording_configuration = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  recording_reconnect_window_seconds : float option; [@option]
      (** recording_reconnect_window_seconds *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  destination_configuration :
    aws_ivs_recording_configuration__destination_configuration list;
  thumbnail_configuration :
    aws_ivs_recording_configuration__thumbnail_configuration list;
  timeouts : aws_ivs_recording_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration *)

let aws_ivs_recording_configuration ?id ?name
    ?recording_reconnect_window_seconds ?tags ?tags_all ?timeouts
    ~destination_configuration ~thumbnail_configuration __resource_id
    =
  let __resource_type = "aws_ivs_recording_configuration" in
  let __resource =
    {
      id;
      name;
      recording_reconnect_window_seconds;
      tags;
      tags_all;
      destination_configuration;
      thumbnail_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_recording_configuration __resource);
  ()
