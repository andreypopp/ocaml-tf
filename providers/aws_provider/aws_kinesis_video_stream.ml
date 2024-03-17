(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_video_stream__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kinesis_video_stream__timeouts *)

type aws_kinesis_video_stream = {
  data_retention_in_hours : float prop option; [@option]
      (** data_retention_in_hours *)
  device_name : string prop option; [@option]  (** device_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  media_type : string prop option; [@option]  (** media_type *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_kinesis_video_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_video_stream *)

let aws_kinesis_video_stream ?data_retention_in_hours ?device_name
    ?id ?kms_key_id ?media_type ?tags ?tags_all ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_kinesis_video_stream" in
  let __resource =
    {
      data_retention_in_hours;
      device_name;
      id;
      kms_key_id;
      media_type;
      name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_video_stream __resource);
  ()
