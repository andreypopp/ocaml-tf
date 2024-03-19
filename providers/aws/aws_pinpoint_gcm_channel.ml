(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_gcm_channel = {
  api_key : string prop;  (** api_key *)
  application_id : string prop;  (** application_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_gcm_channel *)

let aws_pinpoint_gcm_channel ?enabled ?id ~api_key ~application_id ()
    : aws_pinpoint_gcm_channel =
  { api_key; application_id; enabled; id }

type t = {
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
}

let register ?tf_module ?enabled ?id ~api_key ~application_id
    __resource_id =
  let __resource_type = "aws_pinpoint_gcm_channel" in
  let __resource =
    aws_pinpoint_gcm_channel ?enabled ?id ~api_key ~application_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_gcm_channel __resource);
  let __resource_attributes =
    ({
       api_key =
         Prop.computed __resource_type __resource_id "api_key";
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
