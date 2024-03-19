(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_video_stream *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesis_video_stream ?data_retention_in_hours ?device_name
    ?id ?kms_key_id ?media_type ?tags ?tags_all ?timeouts ~name () :
    aws_kinesis_video_stream =
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

type t = {
  arn : string prop;
  creation_time : string prop;
  data_retention_in_hours : float prop;
  device_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  media_type : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let register ?tf_module ?data_retention_in_hours ?device_name ?id
    ?kms_key_id ?media_type ?tags ?tags_all ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_kinesis_video_stream" in
  let __resource =
    aws_kinesis_video_stream ?data_retention_in_hours ?device_name
      ?id ?kms_key_id ?media_type ?tags ?tags_all ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_video_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       data_retention_in_hours =
         Prop.computed __resource_type __resource_id
           "data_retention_in_hours";
       device_name =
         Prop.computed __resource_type __resource_id "device_name";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       media_type =
         Prop.computed __resource_type __resource_id "media_type";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
