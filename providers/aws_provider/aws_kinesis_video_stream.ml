(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_kinesis_video_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kinesis_video_stream__timeouts *)

type aws_kinesis_video_stream = {
  data_retention_in_hours : float option; [@option]
      (** data_retention_in_hours *)
  device_name : string option; [@option]  (** device_name *)
  media_type : string option; [@option]  (** media_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_kinesis_video_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_video_stream *)

let aws_kinesis_video_stream ?data_retention_in_hours ?device_name
    ?media_type ?tags ?timeouts ~name __resource_id =
  let __resource_type = "aws_kinesis_video_stream" in
  let __resource =
    {
      data_retention_in_hours;
      device_name;
      media_type;
      name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_video_stream __resource);
  ()
