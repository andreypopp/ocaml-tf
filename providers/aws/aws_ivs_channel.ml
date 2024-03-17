(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivs_channel__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivs_channel__timeouts *)

type aws_ivs_channel = {
  authorized : bool prop option; [@option]  (** authorized *)
  id : string prop option; [@option]  (** id *)
  latency_mode : string prop option; [@option]  (** latency_mode *)
  name : string prop option; [@option]  (** name *)
  recording_configuration_arn : string prop option; [@option]
      (** recording_configuration_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : aws_ivs_channel__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_channel *)

type t = {
  arn : string prop;
  authorized : bool prop;
  id : string prop;
  ingest_endpoint : string prop;
  latency_mode : string prop;
  name : string prop;
  playback_url : string prop;
  recording_configuration_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_ivs_channel ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __resource_id =
  let __resource_type = "aws_ivs_channel" in
  let __resource =
    ({
       authorized;
       id;
       latency_mode;
       name;
       recording_configuration_arn;
       tags;
       tags_all;
       type_;
       timeouts;
     }
      : aws_ivs_channel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_channel __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authorized =
         Prop.computed __resource_type __resource_id "authorized";
       id = Prop.computed __resource_type __resource_id "id";
       ingest_endpoint =
         Prop.computed __resource_type __resource_id
           "ingest_endpoint";
       latency_mode =
         Prop.computed __resource_type __resource_id "latency_mode";
       name = Prop.computed __resource_type __resource_id "name";
       playback_url =
         Prop.computed __resource_type __resource_id "playback_url";
       recording_configuration_arn =
         Prop.computed __resource_type __resource_id
           "recording_configuration_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
